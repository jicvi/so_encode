.class public Lcom/iqiyi/qyplayercardview/a/lpt4;
.super Lorg/qiyi/basecore/card/tool/CustomADCardBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/qiyi/basecore/card/tool/CustomADCardBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/qiyi/basecore/card/CardModelHolder;
    .locals 2

    new-instance v0, Lcom/iqiyi/qyplayercardview/c/com9;

    iget-object v1, p0, Lcom/iqiyi/qyplayercardview/a/lpt4;->mCard:Lorg/qiyi/basecore/card/model/custom/CustomCard;

    invoke-direct {v0, v1}, Lcom/iqiyi/qyplayercardview/c/com9;-><init>(Lorg/qiyi/basecore/card/model/custom/CustomCard;)V

    iget-object v1, p0, Lcom/iqiyi/qyplayercardview/a/lpt4;->mMode:Lorg/qiyi/basecore/card/CardMode;

    invoke-virtual {v0, v1}, Lcom/iqiyi/qyplayercardview/c/com9;->setCardMode(Lorg/qiyi/basecore/card/CardMode;)V

    iget-object v1, p0, Lcom/iqiyi/qyplayercardview/a/lpt4;->mCard:Lorg/qiyi/basecore/card/model/custom/CustomCard;

    invoke-virtual {p0, v0, v1}, Lcom/iqiyi/qyplayercardview/a/lpt4;->build(Lorg/qiyi/basecore/card/CardModelHolder;Lorg/qiyi/basecore/card/model/custom/CustomCard;)Ljava/util/LinkedList;

    move-result-object v1

    iput-object v1, v0, Lcom/iqiyi/qyplayercardview/c/com9;->mModelList:Ljava/util/LinkedList;

    return-object v0
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

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iqiyi/qyplayercardview/a/lpt4;->mCard:Lorg/qiyi/basecore/card/model/custom/CustomCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iqiyi/qyplayercardview/a/lpt4;->mCard:Lorg/qiyi/basecore/card/model/custom/CustomCard;

    iget-object v0, v0, Lorg/qiyi/basecore/card/model/custom/CustomCard;->mData:Lorg/qiyi/basecore/card/model/custom/CustomData;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/iqiyi/qyplayercardview/a/lpt4;->mCard:Lorg/qiyi/basecore/card/model/custom/CustomCard;

    iget-object v0, v0, Lorg/qiyi/basecore/card/model/custom/CustomCard;->mData:Lorg/qiyi/basecore/card/model/custom/CustomData;

    instance-of v0, v0, Lcom/iqiyi/qyplayercardview/g/com3;

    if-eqz v0, :cond_2

    new-instance v3, Lcom/iqiyi/qyplayercardview/model/PortraitADAppListModel;

    invoke-static {}, Lorg/qiyi/basecore/card/CardMode;->DEFAULT()Lorg/qiyi/basecore/card/CardMode;

    move-result-object v4

    iget-object v0, p0, Lcom/iqiyi/qyplayercardview/a/lpt4;->mCard:Lorg/qiyi/basecore/card/model/custom/CustomCard;

    iget-object v0, v0, Lorg/qiyi/basecore/card/model/custom/CustomCard;->mData:Lorg/qiyi/basecore/card/model/custom/CustomData;

    check-cast v0, Lcom/iqiyi/qyplayercardview/g/com3;

    iget-object v0, v0, Lcom/iqiyi/qyplayercardview/g/com3;->dof:Ljava/util/List;

    invoke-direct {v3, v2, p1, v4, v0}, Lcom/iqiyi/qyplayercardview/model/PortraitADAppListModel;-><init>(Lorg/qiyi/basecore/card/model/statistics/CardStatistics;Lorg/qiyi/basecore/card/CardModelHolder;Lorg/qiyi/basecore/card/CardMode;Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
