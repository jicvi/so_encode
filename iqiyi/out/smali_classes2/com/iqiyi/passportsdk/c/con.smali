.class public Lcom/iqiyi/passportsdk/c/con;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iqiyi/passportsdk/b/com3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/iqiyi/passportsdk/b/com3",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private cRs:Lcom/iqiyi/passportsdk/b/com3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iqiyi/passportsdk/b/com3",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/iqiyi/passportsdk/b/com3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iqiyi/passportsdk/b/com3",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iqiyi/passportsdk/c/con;->cRs:Lcom/iqiyi/passportsdk/b/com3;

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/iqiyi/passportsdk/c/con;->cRs:Lcom/iqiyi/passportsdk/b/com3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iqiyi/passportsdk/c/con;->cRs:Lcom/iqiyi/passportsdk/b/com3;

    invoke-interface {v0, p1}, Lcom/iqiyi/passportsdk/b/com3;->onFailed(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/iqiyi/passportsdk/c/con;->onSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 2

    const-string/jumbo v0, "A00000"

    const-string/jumbo v1, "code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iqiyi/passportsdk/c/con;->cRs:Lcom/iqiyi/passportsdk/b/com3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iqiyi/passportsdk/c/con;->cRs:Lcom/iqiyi/passportsdk/b/com3;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/iqiyi/passportsdk/b/com3;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iqiyi/passportsdk/c/con;->cRs:Lcom/iqiyi/passportsdk/b/com3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iqiyi/passportsdk/c/con;->cRs:Lcom/iqiyi/passportsdk/b/com3;

    const-string/jumbo v1, "msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iqiyi/passportsdk/b/com3;->onFailed(Ljava/lang/Object;)V

    goto :goto_0
.end method
