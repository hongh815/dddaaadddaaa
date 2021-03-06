package follow.Service;

import java.util.List;

import VO.FollowVO;

public interface followService {
	void addFollow(FollowVO vo);
	void acceptFollow(String id, String myid);
	List listFollowing(String id);
	List listFollower(String id);
	void unFollow(String id, String myid);
	FollowVO followListSelect(String id, String myid);
	List mylistFollowing(String id);
}
