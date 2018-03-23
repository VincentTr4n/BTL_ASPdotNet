
namespace BTL_ASPdotNet.DataAccess
{
    using System.Collections.Generic;
    public interface ICommonDAO<T>
    {
        /// <summary>
        /// Lấy ra tất cả các bản ghi của bảng tương ứng
        /// </summary>
        /// <returns></returns>
        IEnumerable<T> GetAll();

        /// <summary>
        /// Thêm mới 1 đối tượng vào database
        /// 1. Nếu return true nghĩa là đã thêm thành công
        /// 2. Nếu return false nghĩa là không thêm được
        /// </summary>
        /// <param name="obj"></param>
        /// <returns></returns>
        bool Add(T obj);
       
        /// <summary>
        /// Update 1 đối tượng vào database
        /// 1. Nếu return true nghĩa là đã update thành công
        /// 2. Nếu return false nghĩa là không update được
        /// </summary>
        /// <param name="obj"></param>
        /// <returns></returns>
        bool Update(T obj);

        /// <summary>
        /// Xóa 1 đối tượng trong database
        /// Hàm return về đối tượng vừa được xóa
        /// </summary>
        /// <param name="obj"></param>
        /// <returns></returns>
        T Delete(T obj);
    }
}
