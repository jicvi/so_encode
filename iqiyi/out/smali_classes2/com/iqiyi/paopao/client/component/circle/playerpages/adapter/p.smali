.class Lcom/iqiyi/paopao/client/component/circle/playerpages/adapter/p;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/qiyi/net/callback/IHttpCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/qiyi/net/callback/IHttpCallback",
        "<",
        "Lcom/iqiyi/paopao/middlecommon/library/d/a/lpt6",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic bqn:Lcom/iqiyi/paopao/client/component/circle/playerpages/adapter/o;


# direct methods
.method constructor <init>(Lcom/iqiyi/paopao/client/component/circle/playerpages/adapter/o;)V
    .locals 0

    iput-object p1, p0, Lcom/iqiyi/paopao/client/component/circle/playerpages/adapter/p;->bqn:Lcom/iqiyi/paopao/client/component/circle/playerpages/adapter/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/iqiyi/paopao/middlecommon/library/d/a/lpt6;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iqiyi/paopao/middlecommon/library/d/a/lpt6",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "VideoListAdapter"

    const-string/jumbo v1, "videoTask response"

    invoke-static {v0, v1}, Lcom/iqiyi/paopao/base/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onErrorResponse(Lorg/qiyi/net/exception/HttpException;)V
    .locals 0

    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/iqiyi/paopao/middlecommon/library/d/a/lpt6;

    invoke-virtual {p0, p1}, Lcom/iqiyi/paopao/client/component/circle/playerpages/adapter/p;->a(Lcom/iqiyi/paopao/middlecommon/library/d/a/lpt6;)V

    return-void
.end method
