.class public Lcom/qiyi/card/viewmodel/LiveCenterChannelCardModel;
.super Lorg/qiyi/basecore/card/view/AbstractCardItem;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/qiyi/basecore/card/view/AbstractCardItem",
        "<",
        "Lcom/qiyi/card/viewmodel/LiveCenterChannelCardModel$ViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/qiyi/basecore/card/model/statistics/CardStatistics;Ljava/util/List;Lorg/qiyi/basecore/card/CardModelHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/qiyi/basecore/card/model/statistics/CardStatistics;",
            "Ljava/util/List",
            "<",
            "Lorg/qiyi/basecore/card/model/item/_B;",
            ">;",
            "Lorg/qiyi/basecore/card/CardModelHolder;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/qiyi/basecore/card/view/AbstractCardItem;-><init>(Lorg/qiyi/basecore/card/model/statistics/CardStatistics;Ljava/util/List;Lorg/qiyi/basecore/card/CardModelHolder;)V

    return-void
.end method


# virtual methods
.method public bindViewData(Landroid/content/Context;Lcom/qiyi/card/viewmodel/LiveCenterChannelCardModel$ViewHolder;Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;Lorg/qiyi/basecore/card/channel/IDependenceHandler;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/qiyi/basecore/card/view/AbstractCardItem;->bindViewData(Landroid/content/Context;Lorg/qiyi/basecore/card/view/AbstractCardModel$ViewHolder;Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;Lorg/qiyi/basecore/card/channel/IDependenceHandler;)V

    iget-object v0, p0, Lcom/qiyi/card/viewmodel/LiveCenterChannelCardModel;->mBList:Ljava/util/List;

    invoke-static {v0}, Lorg/qiyi/basecard/common/g/nul;->h(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qiyi/card/viewmodel/LiveCenterChannelCardModel;->mBList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/qiyi/basecore/card/model/item/_B;

    iget-object v1, p2, Lcom/qiyi/card/viewmodel/LiveCenterChannelCardModel$ViewHolder;->icon_img:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/qiyi/card/viewmodel/LiveCenterChannelCardModel$ViewHolder;->icon_img:Landroid/widget/ImageView;

    iget-object v2, v0, Lorg/qiyi/basecore/card/model/item/_B;->img:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v1, p2, Lcom/qiyi/card/viewmodel/LiveCenterChannelCardModel$ViewHolder;->icon_img:Landroid/widget/ImageView;

    invoke-static {v1}, Lorg/qiyi/basecore/imageloader/ImageLoader;->loadImage(Landroid/widget/ImageView;)V

    :cond_0
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/widget/TextView;

    iget-object v2, p2, Lcom/qiyi/card/viewmodel/LiveCenterChannelCardModel$ViewHolder;->channel_name_txt:Landroid/widget/TextView;

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p2, Lcom/qiyi/card/viewmodel/LiveCenterChannelCardModel$ViewHolder;->channel_isliving:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p2, Lcom/qiyi/card/viewmodel/LiveCenterChannelCardModel$ViewHolder;->channel_programe_text:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p2, Lcom/qiyi/card/viewmodel/LiveCenterChannelCardModel$ViewHolder;->channel_time_txt:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p2, Lcom/qiyi/card/viewmodel/LiveCenterChannelCardModel$ViewHolder;->channel_programe_belong:Landroid/widget/TextView;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, p3, v1}, Lcom/qiyi/card/viewmodel/LiveCenterChannelCardModel;->setMeta(Lorg/qiyi/basecore/card/model/item/_B;Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;[Landroid/widget/TextView;)V

    iget-object v0, p2, Lcom/qiyi/card/viewmodel/LiveCenterChannelCardModel$ViewHolder;->container_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4}, Lcom/qiyi/card/viewmodel/LiveCenterChannelCardModel;->getClickData(I)Lorg/qiyi/basecore/card/event/EventData;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/qiyi/card/viewmodel/LiveCenterChannelCardModel$ViewHolder;->bindClickData(Landroid/view/View;Lorg/qiyi/basecore/card/event/EventData;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic bindViewData(Landroid/content/Context;Lorg/qiyi/basecore/card/view/AbstractCardModel$ViewHolder;Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;Lorg/qiyi/basecore/card/channel/IDependenceHandler;)V
    .locals 0

    check-cast p2, Lcom/qiyi/card/viewmodel/LiveCenterChannelCardModel$ViewHolder;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qiyi/card/viewmodel/LiveCenterChannelCardModel;->bindViewData(Landroid/content/Context;Lcom/qiyi/card/viewmodel/LiveCenterChannelCardModel$ViewHolder;Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;Lorg/qiyi/basecore/card/channel/IDependenceHandler;)V

    return-void
.end method

.method public createView(Landroid/view/ViewGroup;Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;)Landroid/view/View;
    .locals 1

    const-string/jumbo v0, "live_channel_layout"

    invoke-static {p1, p2, v0}, Lcom/qiyi/card/viewmodel/LiveCenterChannelCardModel;->inflateView(Landroid/view/ViewGroup;Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getModelType()I
    .locals 1

    const/16 v0, 0x83

    return v0
.end method

.method public onCreateViewHolder(Landroid/view/View;Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;)Lorg/qiyi/basecore/card/view/AbstractCardModel$ViewHolder;
    .locals 1

    new-instance v0, Lcom/qiyi/card/viewmodel/LiveCenterChannelCardModel$ViewHolder;

    invoke-direct {v0, p0, p1, p2}, Lcom/qiyi/card/viewmodel/LiveCenterChannelCardModel$ViewHolder;-><init>(Lcom/qiyi/card/viewmodel/LiveCenterChannelCardModel;Landroid/view/View;Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;)V

    return-object v0
.end method
