package hibernate.query;

import org.hibernate.Transaction;
import org.hibernate.Session;
import hibernate.mapping.Accounts;
import HibernateUtility.SetHibernateUtility;
import org.hibernate.Query;

public class RegistrationQuery {

    public Accounts findAccount(String email) {
        Session sess = null;
        Transaction tx = null;
        Accounts account = null;
        try {
            sess = SetHibernateUtility.getSessionFactory().openSession();
            tx = sess.getTransaction();
            tx.begin();
            Query safehqlquery = sess.createQuery("from Accounts where email=:email");
            safehqlquery.setParameter("email", email);
            account = (Accounts) safehqlquery.uniqueResult();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
                throw e;
            }
        } finally {
            sess.close();
        }
        return account;
    }

    public Accounts findAccountById(long id) {
        Session sess = null;
        Transaction tx = null;
        Accounts account = null;
        try {
            sess = SetHibernateUtility.getSessionFactory().openSession();
            tx = sess.getTransaction();
            tx.begin();
            Query safehqlquery = sess.createQuery("from Accounts where id=:id");
            safehqlquery.setParameter("id", id);
            account = (Accounts) safehqlquery.uniqueResult();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
                throw e;
            }
        } finally {
            sess.close();
        }
        return account;
    }

    public long addAccount(Accounts acc) {
        Session sess = null;
        Transaction tr = null;
        long id = 0;
        try {
            sess = SetHibernateUtility.getSessionFactory().openSession();
            tr = sess.getTransaction();
            sess.getTransaction().setTimeout(1000);
            tr.begin();
            sess.save(acc);
            id = acc.getId();
            tr.commit();
            if (sess.getTransaction().isActive()) {
                System.out.println("Session is active");
            } else {
                System.out.println("Session is inactive");
            }
        } catch (Exception e) {
            if (tr != null) {
                tr.rollback();
                throw e;
            }
        } finally {
            sess.close();
        }
        return id;
    }
}
