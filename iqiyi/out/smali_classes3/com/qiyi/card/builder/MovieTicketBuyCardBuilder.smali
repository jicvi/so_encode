.class public Lcom/qiyi/card/builder/MovieTicketBuyCardBuilder;
.super Lorg/qiyi/basecore/card/builder/AbstractOriginalCardBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/qiyi/basecore/card/builder/AbstractOriginalCardBuilder",
        "<",
        "Lorg/qiyi/basecore/card/model/item/_B;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lorg/qiyi/basecore/card/builder/IOptCardBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qiyi/card/builder/MovieTicketBuyCardBuilder;

    invoke-direct {v0}, Lcom/qiyi/card/builder/MovieTicketBuyCardBuilder;-><init>()V

    sput-object v0, Lcom/qiyi/card/builder/MovieTicketBuyCardBuilder;->instance:Lorg/qiyi/basecore/card/builder/IOptCardBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/qiyi/basecore/card/builder/AbstractOriginalCardBuilder;-><init>()V

    return-void
.end method

.method public static getInstance(Z)Lorg/qiyi/basecore/card/builder/IOptCardBuilder;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/qiyi/card/builder/MovieTicketBuyCardBuilder;->instance:Lorg/qiyi/basecore/card/builder/IOptCardBuilder;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/qiyi/card/builder/MovieTicketBuyCardBuilder;

    invoke-direct {v0}, Lcom/qiyi/card/builder/MovieTicketBuyCardBuilder;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method protected createCustomDividerBelowCardItem(Lorg/qiyi/basecore/card/CardModelHolder;Lorg/qiyi/basecore/card/model/Card;Lorg/qiyi/basecore/card/view/AbstractCardModel;II)Lorg/qiyi/basecore/card/view/AbstractCardModel;
    .locals 3

    const/4 v0, 0x0

    add-int/lit8 v1, p5, -0x1

    if-ne p4, v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lorg/qiyi/basecore/card/view/divider/PaddingLineDividerCardModel;

    const v2, -0xf0f10

    invoke-direct {v1, v0, p1, v2}, Lorg/qiyi/basecore/card/view/divider/PaddingLineDividerCardModel;-><init>(Lorg/qiyi/basecore/card/model/unit/Divider;Lorg/qiyi/basecore/card/CardModelHolder;I)V

    move-object v0, v1

    goto :goto_0
.end method

.method protected getCellCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItems(Lorg/qiyi/basecore/card/model/Card;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/qiyi/basecore/card/model/Card;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/qiyi/basecore/card/model/item/_B;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Lorg/qiyi/basecore/card/model/Card;->bItems:Ljava/util/List;

    return-object v0
.end method

.method protected hasCustomDividerBelowCardItem(Lorg/qiyi/basecore/card/model/Card;Lorg/qiyi/basecore/card/view/AbstractCardModel;II)Z
    .locals 1

    add-int/lit8 v0, p4, -0x1

    if-ne p3, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected newModel(Lorg/qiyi/basecore/card/CardModelHolder;Lorg/qiyi/basecore/card/model/Card;Ljava/util/List;III)Lorg/qiyi/basecore/card/view/AbstractCardModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/qiyi/basecore/card/CardModelHolder;",
            "Lorg/qiyi/basecore/card/model/Card;",
            "Ljava/util/List",
            "<",
            "Lorg/qiyi/basecore/card/model/item/_B;",
            ">;III)",
            "Lorg/qiyi/basecore/card/view/AbstractCardModel;"
        }
    .end annotation

    new-instance v0, Lcom/qiyi/card/viewmodel/MovieTicketBuyCardModel;

    iget-object v1, p2, Lorg/qiyi/basecore/card/model/Card;->statistics:Lorg/qiyi/basecore/card/model/statistics/CardStatistics;

    invoke-direct {v0, v1, p3, p1}, Lcom/qiyi/card/viewmodel/MovieTicketBuyCardModel;-><init>(Lorg/qiyi/basecore/card/model/statistics/CardStatistics;Ljava/util/List;Lorg/qiyi/basecore/card/CardModelHolder;)V

    return-object v0
.end method
