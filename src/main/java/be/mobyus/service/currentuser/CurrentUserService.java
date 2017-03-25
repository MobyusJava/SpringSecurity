package be.mobyus.service.currentuser;

import be.mobyus.model.CurrentUser;

public interface CurrentUserService {

    boolean canAccessUser(CurrentUser currentUser, Long userId);

}
