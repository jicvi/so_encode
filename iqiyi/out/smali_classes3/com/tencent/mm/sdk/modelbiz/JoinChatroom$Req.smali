.class public Lcom/tencent/mm/sdk/modelbiz/JoinChatroom$Req;
.super Lcom/tencent/mm/sdk/modelbase/BaseReq;


# instance fields
.field public chatroomNickName:Ljava/lang/String;

.field public extMsg:Ljava/lang/String;

.field public groupId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/sdk/modelbase/BaseReq;-><init>()V

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/sdk/modelbiz/JoinChatroom$Req;->groupId:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/b/f;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/mm/sdk/modelbase/BaseReq;->toBundle(Landroid/os/Bundle;)V

    const-string/jumbo v0, "_wxapi_join_chatroom_group_id"

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelbiz/JoinChatroom$Req;->groupId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "_wxapi_join_chatroom_chatroom_nickname"

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelbiz/JoinChatroom$Req;->chatroomNickName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "_wxapi_join_chatroom_ext_msg"

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelbiz/JoinChatroom$Req;->extMsg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
