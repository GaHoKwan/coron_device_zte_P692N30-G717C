.class public Lcom/amoi/AmoiEngineerMode/standalone/lightTest;
.super Landroid/app/Activity;
.source "lightTest.java"


# instance fields
.field private audioListView:Landroid/widget/ListView;

.field private mArrayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mlight_List:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mlight_class:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/lightTest;->audioListView:Landroid/widget/ListView;

    .line 19
    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/lightTest;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/lightTest;->mlight_List:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/lightTest;->mlight_class:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/amoi/AmoiEngineerMode/standalone/lightTest;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/lightTest;->mlight_class:Ljava/util/ArrayList;

    return-object v0
.end method

.method private initLight()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/lightTest;->mlight_List:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 33
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/lightTest;->mlight_class:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 35
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/lightTest;->mlight_List:Ljava/util/ArrayList;

    const v1, 0x7f060015

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/lightTest;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/lightTest;->mlight_class:Ljava/util/ArrayList;

    const-class v1, Lcom/amoi/AmoiEngineerMode/standalone/BacklightTest;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/lightTest;->mlight_List:Ljava/util/ArrayList;

    const v1, 0x7f06000b

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/lightTest;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/lightTest;->mlight_class:Ljava/util/ArrayList;

    const-class v1, Lcom/amoi/AmoiEngineerMode/standalone/ButtonLightTest;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 50
    const v0, 0x7f07000f

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/lightTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/lightTest;->audioListView:Landroid/widget/ListView;

    .line 52
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/lightTest;->mlight_List:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/lightTest;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    .line 53
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/lightTest;->audioListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/lightTest;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/lightTest;->audioListView:Landroid/widget/ListView;

    new-instance v1, Lcom/amoi/AmoiEngineerMode/standalone/lightTest$1;

    invoke-direct {v1, p0}, Lcom/amoi/AmoiEngineerMode/standalone/lightTest$1;-><init>(Lcom/amoi/AmoiEngineerMode/standalone/lightTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 64
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/lightTest;->setContentView(I)V

    .line 25
    const v0, 0x7f0600ec

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/lightTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/lightTest;->setTitle(Ljava/lang/CharSequence;)V

    .line 26
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/standalone/lightTest;->initLight()V

    .line 27
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/standalone/lightTest;->initView()V

    .line 28
    return-void
.end method
