.class public Lcom/qiyi/card/viewmodel/WalletCouponCardModel$ViewHolder;
.super Lorg/qiyi/basecore/card/view/AbstractCardModel$ViewHolder;


# instance fields
.field subViewHolders:[Lcom/qiyi/card/viewmodel/WalletCouponCardModel$SubViewHolder;


# direct methods
.method public constructor <init>(Landroid/view/View;Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;)V
    .locals 5

    const/4 v4, 0x3

    invoke-direct {p0, p1, p2}, Lorg/qiyi/basecore/card/view/AbstractCardModel$ViewHolder;-><init>(Landroid/view/View;Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;)V

    new-array v0, v4, [Lcom/qiyi/card/viewmodel/WalletCouponCardModel$SubViewHolder;

    iput-object v0, p0, Lcom/qiyi/card/viewmodel/WalletCouponCardModel$ViewHolder;->subViewHolders:[Lcom/qiyi/card/viewmodel/WalletCouponCardModel$SubViewHolder;

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    iget-object v0, p0, Lcom/qiyi/card/viewmodel/WalletCouponCardModel$ViewHolder;->mRootView:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "layout"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;->getResourceIdForID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/qiyi/card/viewmodel/WalletCouponCardModel$ViewHolder;->subViewHolders:[Lcom/qiyi/card/viewmodel/WalletCouponCardModel$SubViewHolder;

    new-instance v3, Lcom/qiyi/card/viewmodel/WalletCouponCardModel$SubViewHolder;

    invoke-direct {v3}, Lcom/qiyi/card/viewmodel/WalletCouponCardModel$SubViewHolder;-><init>()V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/qiyi/card/viewmodel/WalletCouponCardModel$ViewHolder;->subViewHolders:[Lcom/qiyi/card/viewmodel/WalletCouponCardModel$SubViewHolder;

    aget-object v1, v1, v2

    iput-object v0, v1, Lcom/qiyi/card/viewmodel/WalletCouponCardModel$SubViewHolder;->parent:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/qiyi/card/viewmodel/WalletCouponCardModel$ViewHolder;->subViewHolders:[Lcom/qiyi/card/viewmodel/WalletCouponCardModel$SubViewHolder;

    aget-object v3, v1, v2

    const-string/jumbo v1, "meta1"

    invoke-virtual {p2, v1}, Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;->getResourceIdForID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/qiyi/card/viewmodel/WalletCouponCardModel$SubViewHolder;->meta1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qiyi/card/viewmodel/WalletCouponCardModel$ViewHolder;->subViewHolders:[Lcom/qiyi/card/viewmodel/WalletCouponCardModel$SubViewHolder;

    aget-object v3, v1, v2

    const-string/jumbo v1, "meta2"

    invoke-virtual {p2, v1}, Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;->getResourceIdForID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/qiyi/card/viewmodel/WalletCouponCardModel$SubViewHolder;->meta2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qiyi/card/viewmodel/WalletCouponCardModel$ViewHolder;->subViewHolders:[Lcom/qiyi/card/viewmodel/WalletCouponCardModel$SubViewHolder;

    aget-object v3, v1, v2

    const-string/jumbo v1, "img1"

    invoke-virtual {p2, v1}, Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;->getResourceIdForID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/qiyi/basecore/widget/QiyiDraweeView;

    iput-object v1, v3, Lcom/qiyi/card/viewmodel/WalletCouponCardModel$SubViewHolder;->image1:Lorg/qiyi/basecore/widget/QiyiDraweeView;

    iget-object v1, p0, Lcom/qiyi/card/viewmodel/WalletCouponCardModel$ViewHolder;->subViewHolders:[Lcom/qiyi/card/viewmodel/WalletCouponCardModel$SubViewHolder;

    aget-object v3, v1, v2

    const-string/jumbo v1, "img2"

    invoke-virtual {p2, v1}, Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;->getResourceIdForID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/qiyi/basecore/widget/QiyiDraweeView;

    iput-object v1, v3, Lcom/qiyi/card/viewmodel/WalletCouponCardModel$SubViewHolder;->image2:Lorg/qiyi/basecore/widget/QiyiDraweeView;

    iget-object v1, p0, Lcom/qiyi/card/viewmodel/WalletCouponCardModel$ViewHolder;->subViewHolders:[Lcom/qiyi/card/viewmodel/WalletCouponCardModel$SubViewHolder;

    aget-object v1, v1, v2

    const-string/jumbo v3, "img3"

    invoke-virtual {p2, v3}, Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;->getResourceIdForID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/qiyi/basecore/widget/QiyiDraweeView;

    iput-object v0, v1, Lcom/qiyi/card/viewmodel/WalletCouponCardModel$SubViewHolder;->image3:Lorg/qiyi/basecore/widget/QiyiDraweeView;

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_1
    return-void
.end method
