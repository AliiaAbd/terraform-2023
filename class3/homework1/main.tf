resource "aws_iam_user" "lb" {
  name = "Aliia"
 
}

resource "aws_iam_user" "lb2" {
  name = "kaizen"

}

resource "aws_iam_user" "lb3" {
  name = "hello"

}

resource "aws_iam_user" "lb4" {
  name = "world"
  
}

resource "aws_iam_group" "kaizen" {
  name = "devops"
}  

resource "aws_iam_group" "kaizen2" {
  name = "qa"

}

resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"

  users = [
    aws_iam_user.lb.name,
    aws_iam_user.lb2.name,
  ]

  group = aws_iam_group.kaizen.name
}

resource "aws_iam_group_membership" "team2" {
  name = "tf-testing-group-membership"

  users = [
    aws_iam_user.lb3.name,
    aws_iam_user.lb4.name,
  ]

  group = aws_iam_group.kaizen2.name
}

resource "aws_iam_user" "import" {
  name = "admin"
 
}

output user {
    value = aws_iam_user.lb
}

output user2 {
    value = aws_iam_user.lb2.unique_id
}
