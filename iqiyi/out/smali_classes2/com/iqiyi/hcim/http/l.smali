.class Lcom/iqiyi/hcim/http/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iqiyi/hcim/http/ResponseParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/iqiyi/hcim/http/ResponseParser",
        "<",
        "Lcom/iqiyi/hcim/entity/BaseUser;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aHo:Lcom/iqiyi/hcim/http/UserInfoService;


# direct methods
.method constructor <init>(Lcom/iqiyi/hcim/http/UserInfoService;)V
    .locals 0

    iput-object p1, p0, Lcom/iqiyi/hcim/http/l;->aHo:Lcom/iqiyi/hcim/http/UserInfoService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dd(Ljava/lang/String;)Lcom/iqiyi/hcim/entity/BaseUser;
    .locals 1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iqiyi/hcim/entity/BaseUser;->fill(Lorg/json/JSONObject;)Lcom/iqiyi/hcim/entity/BaseUser;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/iqiyi/hcim/http/l;->dd(Ljava/lang/String;)Lcom/iqiyi/hcim/entity/BaseUser;

    move-result-object v0

    return-object v0
.end method
