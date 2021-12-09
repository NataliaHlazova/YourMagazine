package project.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

import javax.validation.constraints.Digits;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "product")
public class Product {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	
	@Column
	@Size(min=1, max=30)
	private String pr_name;
	@Column
	@Size(min=4, max=100)
	private String description;
	@Column
	@NotNull
	private Date publish_date;
	@Column
	@Digits(integer=5, fraction=2, message = "No more than 5 characters")
	private Double price;
	@Lob
	@NotEmpty(message = "Images are required")
	private String encodedImage;
	
	public Product() {
	}


	public Product(String pr_name, String description, Date publish_date, Double price) {
		this.pr_name = pr_name;
		this.description = description;
		this.publish_date = publish_date;
		this.price = price;
	}


	public Product(Integer id, String pr_name, String description, Date publish_date, Double price) {
		this.id = id;
		this.pr_name = pr_name;
		this.description = description;
		this.publish_date = publish_date;
		this.price = price;
	}


	public Integer getid() {
		return id;
	}


	public void setid(Integer id) {
		this.id = id;
	}


	public String getPr_name() {
		return pr_name;
	}


	public void setPr_name(String pr_name) {
		this.pr_name = pr_name;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public Date getPublish_date() {
		return publish_date;
	}


	public void setPublish_date(Date publish_date) {
		this.publish_date = publish_date;
	}


	public Double getPrice() {
		return price;
	}


	public void setPrice(Double price) {
		this.price = price;
	}

	public String getEncodedImage() {
		return encodedImage;
	}

	public void setEncodedImage(String encodedImage) {
		this.encodedImage = encodedImage;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((description == null) ? 0 : description.hashCode());
		result = prime * result + ((pr_name == null) ? 0 : pr_name.hashCode());
		result = prime * result + ((price == null) ? 0 : price.hashCode());
		result = prime * result + ((publish_date == null) ? 0 : publish_date.hashCode());
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
		Product other = (Product) obj;
		if (id == null) {
			if (other.id != null) {
				return false;
			}
		} else if (!id.equals(other.id)) {
			return false;
		}
		if (description == null) {
			if (other.description != null) {
				return false;
			}
		} else if (!description.equals(other.description)) {
			return false;
		}
		if (pr_name == null) {
			if (other.pr_name != null) {
				return false;
			}
		} else if (!pr_name.equals(other.pr_name)) {
			return false;
		}
		if (price == null) {
			if (other.price != null) {
				return false;
			}
		} else if (!price.equals(other.price)) {
			return false;
		}
		if (publish_date == null) {
			if (other.publish_date != null) {
				return false;
			}
		} else if (!publish_date.equals(other.publish_date)) {
			return false;
		}
		return true;
	}


	@Override
	public String toString() {
		return "Product [id=" + id + ", pr_name=" + pr_name + ", description=" + description + ", publish_date="
				+ publish_date + ", price=" + price + "]";
	}
	
	
	
	
	
	
	

}
