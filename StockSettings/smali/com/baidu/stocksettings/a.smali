.class Lcom/baidu/stocksettings/a;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;


# instance fields
.field final synthetic a:Lcom/baidu/stocksettings/MainActivity;

.field private final synthetic b:Landroid/app/ActionBar;


# direct methods
.method constructor <init>(Lcom/baidu/stocksettings/MainActivity;Landroid/app/ActionBar;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/stocksettings/a;->a:Lcom/baidu/stocksettings/MainActivity;

    iput-object p2, p0, Lcom/baidu/stocksettings/a;->b:Landroid/app/ActionBar;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/stocksettings/a;->b:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    return-void
.end method
