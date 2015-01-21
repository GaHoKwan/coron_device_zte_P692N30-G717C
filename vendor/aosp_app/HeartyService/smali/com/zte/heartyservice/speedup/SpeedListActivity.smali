.class public abstract Lcom/zte/heartyservice/speedup/SpeedListActivity;
.super Landroid/app/Activity;
.source "SpeedListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/speedup/SpeedListActivity$ItemOnClickListener;
    }
.end annotation


# instance fields
.field protected actionBar:Landroid/app/ActionBar;

.field protected itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    new-instance v0, Lcom/zte/heartyservice/speedup/SpeedListActivity$ItemOnClickListener;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/speedup/SpeedListActivity$ItemOnClickListener;-><init>(Lcom/zte/heartyservice/speedup/SpeedListActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedListActivity;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method


# virtual methods
.method protected abstract handleItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation
.end method

.method protected initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "title"
    .parameter "icon"

    .prologue
    const/16 v1, 0x8

    .line 26
    invoke-virtual {p0}, Lcom/zte/heartyservice/speedup/SpeedListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedListActivity;->actionBar:Landroid/app/ActionBar;

    .line 27
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedListActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedListActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 29
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedListActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 30
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedListActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 31
    return-void
.end method

.method protected layoutInit(Landroid/widget/RelativeLayout;I)V
    .locals 2
    .parameter "speedItemLayout"
    .parameter "listItemId"

    .prologue
    .line 70
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/speedup/SpeedListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 71
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const/4 v1, 0x1

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 72
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    return-void
.end method
