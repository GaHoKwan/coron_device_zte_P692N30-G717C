.class Lcom/zte/heartyservice/floater/ScreenLockMonitor$ViewHolder;
.super Ljava/lang/Object;
.source "ScreenLockMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/floater/ScreenLockMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field appIcon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/zte/heartyservice/floater/ScreenLockMonitor;

.field tvAppLabel:Landroid/widget/TextView;

.field tvPkgName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/floater/ScreenLockMonitor;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter "view"

    .prologue
    .line 269
    iput-object p1, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$ViewHolder;->this$0:Lcom/zte/heartyservice/floater/ScreenLockMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    const v0, 0x7f0e0339

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$ViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 271
    const v0, 0x7f0e0110

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$ViewHolder;->tvAppLabel:Landroid/widget/TextView;

    .line 272
    const v0, 0x7f0e0111

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$ViewHolder;->tvPkgName:Landroid/widget/TextView;

    .line 273
    return-void
.end method
