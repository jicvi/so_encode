.class public Lcom/qiyi/card/viewmodel/AdTicketWithDateCardModel$ViewHolder;
.super Lorg/qiyi/basecore/card/view/AbstractCardModel$ViewHolder;


# instance fields
.field mBuy:Landroid/widget/TextView;

.field mMovieType:Landroid/widget/ImageView;

.field mPrice:Landroid/widget/TextView;

.field mScore:Landroid/widget/TextView;

.field mSubTitle:Landroid/widget/TextView;

.field mTitle:Landroid/widget/TextView;

.field timeText1:Landroid/widget/TextView;

.field timeText2:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lorg/qiyi/basecore/card/view/AbstractCardModel$ViewHolder;-><init>(Landroid/view/View;Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;)V

    iget-object v0, p0, Lcom/qiyi/card/viewmodel/AdTicketWithDateCardModel$ViewHolder;->mRootView:Landroid/view/View;

    const-string/jumbo v1, "timeText1"

    invoke-virtual {p2, v1}, Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;->getResourceIdForID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qiyi/card/viewmodel/AdTicketWithDateCardModel$ViewHolder;->timeText1:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/qiyi/card/viewmodel/AdTicketWithDateCardModel$ViewHolder;->mRootView:Landroid/view/View;

    const-string/jumbo v1, "timeText2"

    invoke-virtual {p2, v1}, Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;->getResourceIdForID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qiyi/card/viewmodel/AdTicketWithDateCardModel$ViewHolder;->timeText2:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/qiyi/card/viewmodel/AdTicketWithDateCardModel$ViewHolder;->mRootView:Landroid/view/View;

    const-string/jumbo v1, "title"

    invoke-virtual {p2, v1}, Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;->getResourceIdForID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qiyi/card/viewmodel/AdTicketWithDateCardModel$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/qiyi/card/viewmodel/AdTicketWithDateCardModel$ViewHolder;->mRootView:Landroid/view/View;

    const-string/jumbo v1, "sub_title"

    invoke-virtual {p2, v1}, Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;->getResourceIdForID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qiyi/card/viewmodel/AdTicketWithDateCardModel$ViewHolder;->mSubTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/qiyi/card/viewmodel/AdTicketWithDateCardModel$ViewHolder;->mRootView:Landroid/view/View;

    const-string/jumbo v1, "movie_type"

    invoke-virtual {p2, v1}, Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;->getResourceIdForID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/qiyi/card/viewmodel/AdTicketWithDateCardModel$ViewHolder;->mMovieType:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/qiyi/card/viewmodel/AdTicketWithDateCardModel$ViewHolder;->mRootView:Landroid/view/View;

    const-string/jumbo v1, "score"

    invoke-virtual {p2, v1}, Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;->getResourceIdForID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qiyi/card/viewmodel/AdTicketWithDateCardModel$ViewHolder;->mScore:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/qiyi/card/viewmodel/AdTicketWithDateCardModel$ViewHolder;->mRootView:Landroid/view/View;

    const-string/jumbo v1, "price"

    invoke-virtual {p2, v1}, Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;->getResourceIdForID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qiyi/card/viewmodel/AdTicketWithDateCardModel$ViewHolder;->mPrice:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/qiyi/card/viewmodel/AdTicketWithDateCardModel$ViewHolder;->mRootView:Landroid/view/View;

    const-string/jumbo v1, "buy_button"

    invoke-virtual {p2, v1}, Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;->getResourceIdForID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qiyi/card/viewmodel/AdTicketWithDateCardModel$ViewHolder;->mBuy:Landroid/widget/TextView;

    return-void
.end method
