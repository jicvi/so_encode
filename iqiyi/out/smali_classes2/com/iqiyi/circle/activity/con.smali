.class Lcom/iqiyi/circle/activity/con;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic xb:Lcom/iqiyi/circle/activity/CollectionListActivity;


# direct methods
.method constructor <init>(Lcom/iqiyi/circle/activity/CollectionListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/iqiyi/circle/activity/con;->xb:Lcom/iqiyi/circle/activity/CollectionListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    iget-object v0, p0, Lcom/iqiyi/circle/activity/con;->xb:Lcom/iqiyi/circle/activity/CollectionListActivity;

    invoke-static {v0}, Lcom/iqiyi/circle/activity/CollectionListActivity;->a(Lcom/iqiyi/circle/activity/CollectionListActivity;)Lcom/iqiyi/paopao/middlecommon/ui/view/TabLayout/CommonTabLayout;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/iqiyi/paopao/middlecommon/ui/view/TabLayout/CommonTabLayout;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/iqiyi/circle/activity/con;->xb:Lcom/iqiyi/circle/activity/CollectionListActivity;

    invoke-static {v0}, Lcom/iqiyi/circle/activity/CollectionListActivity;->a(Lcom/iqiyi/circle/activity/CollectionListActivity;)Lcom/iqiyi/paopao/middlecommon/ui/view/TabLayout/CommonTabLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iqiyi/paopao/middlecommon/ui/view/TabLayout/CommonTabLayout;->setCurrentTab(I)V

    return-void
.end method
