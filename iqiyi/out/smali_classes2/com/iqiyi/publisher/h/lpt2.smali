.class final Lcom/iqiyi/publisher/h/lpt2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/iqiyi/paopao/middlecommon/entity/FeedDetailEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/iqiyi/paopao/middlecommon/entity/FeedDetailEntity;Lcom/iqiyi/paopao/middlecommon/entity/FeedDetailEntity;)I
    .locals 4

    invoke-virtual {p1}, Lcom/iqiyi/paopao/middlecommon/entity/FeedDetailEntity;->kF()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/iqiyi/paopao/middlecommon/entity/FeedDetailEntity;->kF()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/iqiyi/paopao/middlecommon/entity/FeedDetailEntity;

    check-cast p2, Lcom/iqiyi/paopao/middlecommon/entity/FeedDetailEntity;

    invoke-virtual {p0, p1, p2}, Lcom/iqiyi/publisher/h/lpt2;->a(Lcom/iqiyi/paopao/middlecommon/entity/FeedDetailEntity;Lcom/iqiyi/paopao/middlecommon/entity/FeedDetailEntity;)I

    move-result v0

    return v0
.end method
