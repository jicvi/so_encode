.class Lcom/qiyi/card/viewmodel/RankDateListFoldCardModel$ViewHolder$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/qiyi/card/viewmodel/RankDateListFoldCardModel$ViewHolder;


# direct methods
.method constructor <init>(Lcom/qiyi/card/viewmodel/RankDateListFoldCardModel$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/qiyi/card/viewmodel/RankDateListFoldCardModel$ViewHolder$2;->this$0:Lcom/qiyi/card/viewmodel/RankDateListFoldCardModel$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/qiyi/card/viewmodel/RankDateListFoldCardModel$ViewHolder$2;->this$0:Lcom/qiyi/card/viewmodel/RankDateListFoldCardModel$ViewHolder;

    invoke-static {v0}, Lcom/qiyi/card/viewmodel/RankDateListFoldCardModel$ViewHolder;->access$600(Lcom/qiyi/card/viewmodel/RankDateListFoldCardModel$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    return-void
.end method
