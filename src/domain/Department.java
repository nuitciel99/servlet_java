package domain;

import lombok.Data;

@Data
public class Department {
	private Long deptno;
	private String dname;
	private Long college;
	private String loc;
}
