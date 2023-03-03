package springjdbc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import springjdbc.model.FormModel;

public class Database {
  JdbcTemplate template;
  
  public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
  public int save(FormModel user) {
		String sql = "insert into public.simple(name,age,password) values('" + user.getName() + "'," + user.getAge() + ",'"+user.getPassword()+"')";
		return template.update(sql);

}
  
  
public List<FormModel> getAllData() {
	// TODO Auto-generated method stub
	return template.query("SELECT * FROM public.simple", new RowMapper<FormModel>() {
	    public FormModel mapRow(ResultSet rs, int row) throws SQLException {
	    	FormModel formModel = new FormModel();
	    	formModel.setName(rs.getString("name"));
	    	formModel.setAge(rs.getInt("age"));
	    	formModel.setPassword(rs.getString("password"));
	       
	        return formModel;
	    }
	});
	
	}
	public int delete(String name) {
	  System.out.println("name " + name);
	  String sql="delete from public.simple where name='"+name+"'";
	  return template.update(sql);
	  
	 }
	public int update(FormModel user) {
	 
	  String sql="update public.simple set name='"+ user.getName()+"',age="+user.getAge()+",password='"+user.getPassword()+"'+user.getName()+'"; 
	  return template.update(sql);
	  
	 }
	public FormModel getEmpById(String name) {
		String sql="select * from public.simple where name=?";
		return template.queryForObject(sql, new Object[] {name},new BeanPropertyRowMapper<FormModel>(FormModel.class));
	}
}