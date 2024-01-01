package com.example.teamprojectbringiton.payment;

import com.example.teamprojectbringiton.payment.request.UpdatePointDTO;
import com.example.teamprojectbringiton.payment.response.PaymentDTO;
import com.example.teamprojectbringiton.point.Point;
import com.example.teamprojectbringiton.point.PointService;
import com.example.teamprojectbringiton.user.User;
import com.example.teamprojectbringiton.user.UserService;
import com.example.teamprojectbringiton.user.dto.response.UserPointDTO;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.net.ssl.HttpsURLConnection;
import java.io.*;
import java.net.URL;
import java.util.List;
import java.util.Map;

@RestController
public class PaymentRestController {
    @Value("${PAYMENT_IMP_KEY}")
    private String payment_imp_key;
    @Value("${PAYMENT_IMP_SECRET}")
    private String payment_imp_secret;

    @Autowired
    private PaymentService paymentService;

    @Autowired
    private PointService pointService;

    @Autowired
    private HttpSession session;

    @Autowired
    private UserService userService;

    @PostMapping("/payment/refund")
    public void refundRequest(String access_token, String merchant_uid, String reason) throws IOException {
        URL url = new URL("https://api.iamport.kr/payments/cancel");
        HttpsURLConnection conn = (HttpsURLConnection) url.openConnection();

        // 요청의 Content-Type, Accept, Authorization 헤더 설정
        conn.setRequestProperty("Content-type", "application/json");
        conn.setRequestProperty("Accept", "application/json");
        conn.setRequestProperty("Authorization", "a892629dcad486f88b442c2425c32c8742d6bb7d");

        // 해당 연결을 출력 스트림(요청)으로 사용
        conn.setDoOutput(true);

        // JSON 객체에 해당 API가 필요로하는 데이터 추가.
        JsonObject json = new JsonObject();
        json.addProperty("merchant_uid", "order_no_202312147542477344");
        json.addProperty("reason", "환불");

        // 출력 스트림으로 해당 conn에 요청
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
        bw.write(json.toString());
        bw.flush();
        bw.close();

        // 입력 스트림으로 conn 요청에 대한 응답 반환
        BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        br.close();
        conn.disconnect();
    }

    @PostMapping("/getToken")
    public String getToken(String apiKey, String secretKey) throws IOException {

        URL url = new URL("https://api.iamport.kr/users/getToken");
        HttpsURLConnection conn = (HttpsURLConnection) url.openConnection();

        // 요청의 Content-Type과 Accept 헤더 설정
        conn.setRequestProperty("Content-Type", "application/json");
        conn.setRequestProperty("Accept", "application/json");

        // 해당 연결을 출력 스트림(요청)으로 사용
        conn.setDoOutput(true);

        // JSON 객체에 해당 API가 필요로하는 데이터 추가.
        JsonObject json = new JsonObject();
        json.addProperty("imp_key", payment_imp_key);
        json.addProperty("imp_secret", payment_imp_secret);

        // 출력 스트림으로 해당 conn에 요청
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
        bw.write(json.toString()); // json 객체를 문자열 형태로 HTTP 요청 본문에 추가
        bw.flush(); // BufferedWriter 비우기
        bw.close(); // BufferedWriter 종료

        // 입력 스트림으로 conn 요청에 대한 응답 반환
        BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        Gson gson = new Gson(); // 응답 데이터를 자바 객체로 변환
        String response = gson.fromJson(br.readLine(), Map.class).get("response").toString();
        String accessToken = gson.fromJson(response, Map.class).get("access_token").toString();
        br.close(); // BufferedReader 종료

        conn.disconnect(); // 연결 종료

        return accessToken;
    }

    @PostMapping("/payment-write")
    public ResponseEntity<String> writePayment(@RequestBody Payment payment) {
        System.out.println("결제 RestController 진입");

        User user = (User) session.getAttribute("sessionUser");
        try {
            paymentService.paymentWrite(payment);
            UserPointDTO userPoint = (UserPointDTO) session.getAttribute("userPoint");


            Point point = pointService.findByUserId(user.getId());
            int nowPoint = point.getMyPoint() + payment.getAmount();
            System.out.println("point 얼마 있노 ? : " + point.getMyPoint());
            System.out.println("point 얼마 추가하노 ? : " + payment.getAmount());
            System.out.println("point 잘 합쳤나? ? : " + nowPoint);

            // List<PaymentDTO> dto = paymentService.findByUserIdJoinPoint(userPoint.getId());

//            int nowPoint = dto.stream()
//                    .reduce((first, second) -> second)
//                    .map(lastDTO -> lastDTO.getAmount() + lastDTO.getMyPoint())
//                    .orElse(0);

            UpdatePointDTO updatePointDTO = new UpdatePointDTO();

            updatePointDTO.setNowPoint(nowPoint);
            updatePointDTO.setId(point.getId());

            pointService.pointUpdate(updatePointDTO);
            UserPointDTO userPointDTO = userService.findByIdJoinPoint(userPoint.getId());
            session.setAttribute("userPoint", userPointDTO);

            return new ResponseEntity<>("결제 성공", HttpStatus.OK);

        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<>("Failed to save payment data", HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

}
