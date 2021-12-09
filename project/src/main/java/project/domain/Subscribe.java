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
@Table(name = "subscribe")
public class Subscribe {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	@ManyToOne
	@JoinColumn(name = "user_id", referencedColumnName = "id")
	private User user;
	@ManyToOne
	@JoinColumn(name = "product_id", referencedColumnName = "id")
	private Product  product;
	@Column(name = "subs_date")
	private Date subs_date;
	@Column(name = "period")
	private Integer period;
	@Column(name = "status")
	private boolean status;

	public Subscribe() {}
	

	public Subscribe(Integer id) {
		super();
		this.id = id;
	}



	public Subscribe(User user, Product product, Date subs_date, Integer period, boolean status) {
		super();
		this.user = user;
		this.product = product;
		this.subs_date = subs_date;
		this.period = period;
		this.status = status;
	}

	public Subscribe(Integer id, User user, Product product, Date subs_date, Integer period, boolean status) {
		super();
		this.id = id;
		this.user = user;
		this.product = product;
		this.subs_date = subs_date;
		this.period = period;
		this.status = status;
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

	public Date getSubs_date() {
		return subs_date;
	}

	public void setSubs_date(Date subs_date) {
		this.subs_date = subs_date;
	}

	public Integer getPeriod() {
		return period;
	}

	public void setPeriod(Integer period) {
		this.period = period;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((period == null) ? 0 : period.hashCode());
		result = prime * result + ((product == null) ? 0 : product.hashCode());
		result = prime * result + (status ? 1231 : 1237);
		result = prime * result + ((subs_date == null) ? 0 : subs_date.hashCode());
		result = prime * result + ((user == null) ? 0 : user.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		Subscribe other = (Subscribe) obj;
		if (id == null) {
			if (other.id != null) {
				return false;
			}
		} else if (!id.equals(other.id)) {
			return false;
		}
		if (period == null) {
			if (other.period != null) {
				return false;
			}
		} else if (!period.equals(other.period)) {
			return false;
		}
		if (product == null) {
			if (other.product != null) {
				return false;
			}
		} else if (!product.equals(other.product)) {
			return false;
		}
		if (status != other.status) {
			return false;
		}
		if (subs_date == null) {
			if (other.subs_date != null) {
				return false;
			}
		} else if (!subs_date.equals(other.subs_date)) {
			return false;
		}
		if (user == null) {
			if (other.user != null) {
				return false;
			}
		} else if (!user.equals(other.user)) {
			return false;
		}
		return true;
	}

	@Override
	public String toString() {
		return "Subscribe [id=" + id + ", user=" + user + ", product=" + product + ", subs_date=" + subs_date + ", period="
				+ period + ", status=" + status + "]";
	}

	
	
}
