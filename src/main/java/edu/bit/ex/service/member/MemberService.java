package edu.bit.ex.service.member;

import edu.bit.ex.vo.MemberVO;

public interface MemberService {

//    MemberVO getMember(String member_id);
//    int insertUser(MemberVO memberVO);
//    void insertAuthorities(MemberVO memberVO);
//    int getMemberIdx(MemberVO memberVO);
//    int memberIdCheck(MemberVO memberVO);

    boolean checkDuplicateId(String member_id);
    void addUser(MemberVO memberVO);


    boolean checkValidatePw(String pw);

    boolean emailCheck(String email);

    boolean checkValidateId(String member_id);

    boolean checkValidateNickname(String nickname);
}
