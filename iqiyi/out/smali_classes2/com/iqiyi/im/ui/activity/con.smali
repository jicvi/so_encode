.class Lcom/iqiyi/im/ui/activity/con;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aUQ:Lcom/iqiyi/im/ui/activity/MediaPlatformActivity;


# direct methods
.method constructor <init>(Lcom/iqiyi/im/ui/activity/MediaPlatformActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/iqiyi/im/ui/activity/con;->aUQ:Lcom/iqiyi/im/ui/activity/MediaPlatformActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/iqiyi/im/ui/activity/con;->aUQ:Lcom/iqiyi/im/ui/activity/MediaPlatformActivity;

    invoke-virtual {v0}, Lcom/iqiyi/im/ui/activity/MediaPlatformActivity;->finish()V

    return-void
.end method
