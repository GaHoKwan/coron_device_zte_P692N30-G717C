.class public Lcom/zte/engineer/EngineerCodeListView;
.super Landroid/app/Activity;
.source "EngineerCodeListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/engineer/EngineerCodeListView$1;,
        Lcom/zte/engineer/EngineerCodeListView$MyAdapter;,
        Lcom/zte/engineer/EngineerCodeListView$MyOnItemClickListener;
    }
.end annotation


# instance fields
.field private listView:Landroid/widget/ListView;

.field r:Landroid/content/res/Resources;

.field private stringsIDs:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/zte/engineer/EngineerCodeListView;->listView:Landroid/widget/ListView;

    .line 24
    iput-object v0, p0, Lcom/zte/engineer/EngineerCodeListView;->r:Landroid/content/res/Resources;

    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zte/engineer/EngineerCodeListView;->stringsIDs:[I

    .line 76
    return-void

    .line 25
    nop

    :array_0
    .array-data 0x4
        0x6et 0x0t 0x6t 0x7ft
        0x6ft 0x0t 0x6t 0x7ft
        0x70t 0x0t 0x6t 0x7ft
        0x71t 0x0t 0x6t 0x7ft
        0x72t 0x0t 0x6t 0x7ft
    .end array-data
.end method

.method static synthetic access$100(Lcom/zte/engineer/EngineerCodeListView;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/zte/engineer/EngineerCodeListView;->stringsIDs:[I

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/engineer/EngineerCodeListView;->r:Landroid/content/res/Resources;

    .line 35
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/engineer/EngineerCodeListView;->listView:Landroid/widget/ListView;

    .line 36
    iget-object v0, p0, Lcom/zte/engineer/EngineerCodeListView;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/zte/engineer/EngineerCodeListView$MyAdapter;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/zte/engineer/EngineerCodeListView$MyAdapter;-><init>(Lcom/zte/engineer/EngineerCodeListView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 37
    iget-object v0, p0, Lcom/zte/engineer/EngineerCodeListView;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/zte/engineer/EngineerCodeListView$MyOnItemClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zte/engineer/EngineerCodeListView$MyOnItemClickListener;-><init>(Lcom/zte/engineer/EngineerCodeListView;Lcom/zte/engineer/EngineerCodeListView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/zte/engineer/EngineerCodeListView;->listView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 39
    return-void
.end method
