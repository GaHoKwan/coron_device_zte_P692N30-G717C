.class public Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;
.super Landroid/app/Activity;
.source "AudioTest.java"


# instance fields
.field private audioArray:[Ljava/lang/String;

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;->audioListView:Landroid/widget/ListView;

    .line 23
    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    .line 24
    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;->audioArray:[Ljava/lang/String;

    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 34
    const v0, 0x7f07000f

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;->audioListView:Landroid/widget/ListView;

    .line 38
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f05

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;->audioArray:[Ljava/lang/String;

    .line 40
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;->audioArray:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    .line 42
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;->audioListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;->audioListView:Landroid/widget/ListView;

    new-instance v1, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest$1;

    invoke-direct {v1, p0}, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest$1;-><init>(Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 86
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;->setContentView(I)V

    .line 29
    const v0, 0x7f060013

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;->setTitle(Ljava/lang/CharSequence;)V

    .line 30
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;->initView()V

    .line 31
    return-void
.end method
