.class public final Lo/廂;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final synthetic 櫯:Ljava/lang/Runnable;

.field final synthetic 鷭:Leu/chainfire/supersu/compat/FragmentActivity;


# direct methods
.method public constructor <init>(Leu/chainfire/supersu/compat/FragmentActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lo/廂;->鷭:Leu/chainfire/supersu/compat/FragmentActivity;

    iput-object p2, p0, Lo/廂;->櫯:Ljava/lang/Runnable;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lo/廂;->櫯:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lo/廂;->櫯:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 81
    const/4 v0, 0x1

    return v0

    .line 83
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
