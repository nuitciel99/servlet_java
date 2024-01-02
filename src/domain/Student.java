package domain;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class Student {
	private final Long studno;
    private final String name;
    private final String grade;
    private final String birthdate;
    private final Long deptno;
    private final Long profno;
}
