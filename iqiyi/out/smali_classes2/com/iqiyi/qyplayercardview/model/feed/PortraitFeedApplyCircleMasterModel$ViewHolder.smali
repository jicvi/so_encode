.class public Lcom/iqiyi/qyplayercardview/model/feed/PortraitFeedApplyCircleMasterModel$ViewHolder;
.super Lcom/iqiyi/qyplayercardview/model/feed/AbstractFeedCardModel$ViewHolder;


# instance fields
.field public dzw:Landroid/widget/TextView;

.field public mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/iqiyi/qyplayercardview/model/feed/AbstractFeedCardModel$ViewHolder;-><init>(Landroid/view/View;Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;)V

    const-string/jumbo v0, "apply_txt"

    invoke-virtual {p2, v0}, Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;->getResourceIdForID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iqiyi/qyplayercardview/model/feed/PortraitFeedApplyCircleMasterModel$ViewHolder;->mTitle:Landroid/widget/TextView;

    const-string/jumbo v0, "apply"

    invoke-virtual {p2, v0}, Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;->getResourceIdForID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iqiyi/qyplayercardview/model/feed/PortraitFeedApplyCircleMasterModel$ViewHolder;->dzw:Landroid/widget/TextView;

    return-void
.end method
