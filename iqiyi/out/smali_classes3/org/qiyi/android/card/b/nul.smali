.class final Lorg/qiyi/android/card/b/nul;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/qiyi/net/callback/IHttpCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/qiyi/net/callback/IHttpCallback",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic dnz:Ljava/lang/String;

.field final synthetic val$adapter:Lorg/qiyi/basecard/v3/adapter/ICardAdapter;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$eventData:Lorg/qiyi/basecard/v3/event/EventData;

.field final synthetic val$viewHolder:Lorg/qiyi/basecard/v3/viewholder/AbsViewHolder;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/qiyi/basecard/v3/viewholder/AbsViewHolder;Lorg/qiyi/basecard/v3/adapter/ICardAdapter;Lorg/qiyi/basecard/v3/event/EventData;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/qiyi/android/card/b/nul;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lorg/qiyi/android/card/b/nul;->val$viewHolder:Lorg/qiyi/basecard/v3/viewholder/AbsViewHolder;

    iput-object p3, p0, Lorg/qiyi/android/card/b/nul;->val$adapter:Lorg/qiyi/basecard/v3/adapter/ICardAdapter;

    iput-object p4, p0, Lorg/qiyi/android/card/b/nul;->val$eventData:Lorg/qiyi/basecard/v3/event/EventData;

    iput-object p5, p0, Lorg/qiyi/android/card/b/nul;->dnz:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public E(Lorg/json/JSONObject;)V
    .locals 6

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string/jumbo v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "atoken"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lorg/qiyi/android/card/b/nul;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lorg/qiyi/android/card/b/nul;->val$viewHolder:Lorg/qiyi/basecard/v3/viewholder/AbsViewHolder;

    iget-object v2, p0, Lorg/qiyi/android/card/b/nul;->val$adapter:Lorg/qiyi/basecard/v3/adapter/ICardAdapter;

    iget-object v3, p0, Lorg/qiyi/android/card/b/nul;->val$eventData:Lorg/qiyi/basecard/v3/event/EventData;

    iget-object v4, p0, Lorg/qiyi/android/card/b/nul;->dnz:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lorg/qiyi/android/card/b/aux;->c(Landroid/content/Context;Lorg/qiyi/basecard/v3/viewholder/AbsViewHolder;Lorg/qiyi/basecard/v3/adapter/ICardAdapter;Lorg/qiyi/basecard/v3/event/EventData;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lorg/qiyi/basecard/common/statics/prn;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    throw v0
.end method

.method public onErrorResponse(Lorg/qiyi/net/exception/HttpException;)V
    .locals 2

    invoke-static {}, Lorg/qiyi/basecard/common/statics/prn;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/qiyi/android/card/b/nul;->val$context:Landroid/content/Context;

    const-string/jumbo v1, "\u8c03\u8bd5\uff1a \u8bf7\u6c42\u83b7\u53d6atoken\u5931\u8d25~"

    invoke-static {v0, v1}, Lorg/qiyi/basecore/widget/ac;->dS(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lorg/qiyi/android/card/b/nul;->E(Lorg/json/JSONObject;)V

    return-void
.end method
