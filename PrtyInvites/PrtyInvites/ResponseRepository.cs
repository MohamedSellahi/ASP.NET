using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PartyInvites {
   public class ResponseRepository {

      private static ResponseRepository _repository = new ResponseRepository();
      private List<GuestResponse> _responces = new List<GuestResponse>();

      public static ResponseRepository GetRepository() {
         return _repository;
      }

      public IEnumerable<GuestResponse> GetAllResponces() {
         return _responces;
      }

      public void AddResponce(GuestResponse responce) {
         _responces.Add(responce);
      }

   }
}