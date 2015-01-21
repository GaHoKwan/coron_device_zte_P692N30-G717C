.class public Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;
.super Ljava/lang/Object;
.source "NewStaticsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StaticsHolder"
.end annotation


# instance fields
.field private icon:Landroid/widget/ImageView;

.field private percent:Landroid/widget/TextView;

.field private progressbar:Landroid/widget/ProgressBar;

.field private state:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter "view"

    .prologue
    .line 1214
    iput-object p1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;->this$1:Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1215
    const v0, 0x1020006

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;->icon:Landroid/widget/ImageView;

    .line 1216
    const v0, 0x1020016

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;->title:Landroid/widget/TextView;

    .line 1217
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;->percent:Landroid/widget/TextView;

    .line 1218
    const v0, 0x7f0e02be

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;->state:Landroid/widget/TextView;

    .line 1219
    const v0, 0x102000d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;->progressbar:Landroid/widget/ProgressBar;

    .line 1220
    return-void
.end method

.method static synthetic access$1000(Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;->icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;->progressbar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;->percent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$StaticsHolder;->state:Landroid/widget/TextView;

    return-object v0
.end method
