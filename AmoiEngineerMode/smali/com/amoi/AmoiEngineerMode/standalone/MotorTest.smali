.class public Lcom/amoi/AmoiEngineerMode/standalone/MotorTest;
.super Landroid/app/Activity;
.source "MotorTest.java"


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

.field private motorarray:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/MotorTest;->audioListView:Landroid/widget/ListView;

    .line 16
    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/MotorTest;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    .line 17
    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/MotorTest;->motorarray:[Ljava/lang/String;

    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 27
    const v0, 0x7f07000f

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/MotorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/MotorTest;->audioListView:Landroid/widget/ListView;

    .line 28
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/standalone/MotorTest;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/MotorTest;->motorarray:[Ljava/lang/String;

    .line 29
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/MotorTest;->motorarray:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/MotorTest;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    .line 31
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/MotorTest;->audioListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/MotorTest;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 33
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/MotorTest;->audioListView:Landroid/widget/ListView;

    new-instance v1, Lcom/amoi/AmoiEngineerMode/standalone/MotorTest$1;

    invoke-direct {v1, p0}, Lcom/amoi/AmoiEngineerMode/standalone/MotorTest$1;-><init>(Lcom/amoi/AmoiEngineerMode/standalone/MotorTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 48
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/MotorTest;->setContentView(I)V

    .line 22
    const v0, 0x7f060016

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/MotorTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/MotorTest;->setTitle(Ljava/lang/CharSequence;)V

    .line 23
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/standalone/MotorTest;->initView()V

    .line 24
    return-void
.end method
