package com.example.teamprojectbringiton.user.dto.response;

import com.fasterxml.jackson.databind.PropertyNamingStrategies;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.Data;

@Data
@JsonNaming(value = PropertyNamingStrategies.SnakeCaseStrategy.class)
public class KakaoProfile {
    private String id;
    private String connectedAt;
    private Propreties properties;

    @Data
    public class Propreties {
        private String nickname;
        private String profileImage;
    }
}
