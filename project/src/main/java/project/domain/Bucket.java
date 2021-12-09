package project.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "bucket")
public class Bucket {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	@ManyToOne
	@JoinColumn(name = "user_id", referencedColumnName = "id")
	private User user;
	@ManyToOne
	@JoinColumn(name = "product_id", referencedColumnName = "id")
	private Product  product;
	@Column(name = "buck_date")
	private Date buck_date;

	public Bucket() {}
	
	public Bucket(Integer id) {
		this.id = id;
	}

	public Bucket(User user, Product product, Date buck_date) {
		super();
		this.user = user;
		this.product = product;
		this.buck_date = buck_date;
	}

	public Bucket(Integer id, User user, Product product, Date buck_date) {
		super();
		this.id = id;
		this.user = user;
		this.product = product;
		this.buck_date = buck_date;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Date getBuck_date() {
		return buck_date;
	}

	public void setBuck_date(Date buck_date) {
		this.buck_date = buck_date;
	}

	@Override
	public String toString() {
		return "Bucket [id=" + id + ", user=" + user + ", product=" + product + ", buck_date=" + buck_date + "]";
	}


	
	
}
