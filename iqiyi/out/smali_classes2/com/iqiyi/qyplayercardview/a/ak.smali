.class public Lcom/iqiyi/qyplayercardview/a/ak;
.super Lorg/qiyi/basecore/card/tool/CardBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/qiyi/basecore/card/tool/CardBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/qiyi/basecore/card/CardModelHolder;
    .locals 2

    new-instance v0, Lcom/iqiyi/qyplayercardview/c/bd;

    iget-object v1, p0, Lcom/iqiyi/qyplayercardview/a/ak;->mCard:Lorg/qiyi/basecore/card/model/Card;

    invoke-direct {v0, v1}, Lcom/iqiyi/qyplayercardview/c/bd;-><init>(Lorg/qiyi/basecore/card/model/Card;)V

    iget-object v1, p0, Lcom/iqiyi/qyplayercardview/a/ak;->mCardMgr:Lorg/qiyi/basecore/card/AbsCardDataMgr;

    invoke-virtual {v0, v1}, Lcom/iqiyi/qyplayercardview/c/bd;->setCardMgr(Lorg/qiyi/basecore/card/AbsCardDataMgr;)V

    iget-object v1, p0, Lcom/iqiyi/qyplayercardview/a/ak;->mCardMode:Lorg/qiyi/basecore/card/CardMode;

    invoke-virtual {v0, v1}, Lcom/iqiyi/qyplayercardview/c/bd;->setCardMode(Lorg/qiyi/basecore/card/CardMode;)V

    iget-object v1, p0, Lcom/iqiyi/qyplayercardview/a/ak;->mCard:Lorg/qiyi/basecore/card/model/Card;

    invoke-virtual {p0, v0, v1}, Lcom/iqiyi/qyplayercardview/a/ak;->build(Lorg/qiyi/basecore/card/CardModelHolder;Lorg/qiyi/basecore/card/model/Card;)Ljava/util/LinkedList;

    move-result-object v1

    iput-object v1, v0, Lcom/iqiyi/qyplayercardview/c/bd;->mModelList:Ljava/util/LinkedList;

    return-object v0
.end method

.method protected createCardFooter(Lorg/qiyi/basecore/card/CardModelHolder;)Lorg/qiyi/basecore/card/view/AbstractCardModel;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected createCardHeader(Lorg/qiyi/basecore/card/CardModelHolder;)Lorg/qiyi/basecore/card/view/AbstractCardModel;
    .locals 3

    iget-object v0, p1, Lorg/qiyi/basecore/card/CardModelHolder;->mCard:Lorg/qiyi/basecore/card/model/Card;

    iget-object v0, v0, Lorg/qiyi/basecore/card/model/Card;->top_banner:Lorg/qiyi/basecore/card/model/CardTopBanner;

    new-instance v1, Lcom/iqiyi/qyplayercardview/model/PortraitRankTitleModel;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, p1}, Lcom/iqiyi/qyplayercardview/model/PortraitRankTitleModel;-><init>(Lorg/qiyi/basecore/card/model/statistics/CardStatistics;Lorg/qiyi/basecore/card/model/CardTopBanner;Lorg/qiyi/basecore/card/CardModelHolder;)V

    return-object v1
.end method

.method protected createCardItems(Lorg/qiyi/basecore/card/CardModelHolder;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/qiyi/basecore/card/CardModelHolder;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/qiyi/basecore/card/view/AbstractCardModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iqiyi/qyplayercardview/a/ak;->mCard:Lorg/qiyi/basecore/card/model/Card;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iqiyi/qyplayercardview/a/ak;->mCard:Lorg/qiyi/basecore/card/model/Card;

    iget-object v0, v0, Lorg/qiyi/basecore/card/model/Card;->bItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iqiyi/qyplayercardview/a/ak;->mCard:Lorg/qiyi/basecore/card/model/Card;

    iget-object v0, v0, Lorg/qiyi/basecore/card/model/Card;->bItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    instance-of v1, p1, Lcom/iqiyi/qyplayercardview/c/aux;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/iqiyi/qyplayercardview/model/PortraitPlayerAreaCardModel;

    iget-object v2, p0, Lcom/iqiyi/qyplayercardview/a/ak;->mCard:Lorg/qiyi/basecore/card/model/Card;

    iget-object v2, v2, Lorg/qiyi/basecore/card/model/Card;->statistics:Lorg/qiyi/basecore/card/model/statistics/CardStatistics;

    check-cast p1, Lcom/iqiyi/qyplayercardview/c/aux;

    iget-object v3, p0, Lcom/iqiyi/qyplayercardview/a/ak;->mCardMode:Lorg/qiyi/basecore/card/CardMode;

    iget-object v4, p0, Lcom/iqiyi/qyplayercardview/a/ak;->mCard:Lorg/qiyi/basecore/card/model/Card;

    iget-object v4, v4, Lorg/qiyi/basecore/card/model/Card;->bItems:Ljava/util/List;

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/iqiyi/qyplayercardview/model/PortraitPlayerAreaCardModel;-><init>(Lorg/qiyi/basecore/card/model/statistics/CardStatistics;Lcom/iqiyi/qyplayercardview/c/aux;Lorg/qiyi/basecore/card/CardMode;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
