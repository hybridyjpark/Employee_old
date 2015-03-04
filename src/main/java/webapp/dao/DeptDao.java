package webapp.dao;

import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import webapp.model.Dept;

public interface DeptDao {

	final static String SELECT_BY_DEPTNO = "select * from dept where deptno=?";
	final static String SELECT_BY_DEPTNO_WITH_EMPS = 
			"select * " +
			"from DEPT d letf join emp e " + 
			"on d.deptno = e.deptno "+ 
			"where d.deptno = ?";

	public void setDataSource(DataSource ds);

	/*
	 * Single row by primary key
	 */
	public Dept selectByDeptno(Integer deptno);
	public Dept selectByDeptnoWithEmps(Integer deptno);

	/*
	 * Multiple row by
	 */
	public List<Dept> selectAll() throws SQLException;

	public List<Dept> selectAllWithEmps() throws SQLException;

}
