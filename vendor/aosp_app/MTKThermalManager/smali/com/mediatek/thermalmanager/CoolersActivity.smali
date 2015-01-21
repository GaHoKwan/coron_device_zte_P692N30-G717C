.class public Lcom/mediatek/thermalmanager/CoolersActivity;
.super Landroid/app/Activity;
.source "CoolersActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/thermalmanager/CoolersActivity$1;,
        Lcom/mediatek/thermalmanager/CoolersActivity$CoolerLoader;
    }
.end annotation


# instance fields
.field private coolers_lv:Landroid/widget/ListView;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/thermalmanager/CoolersActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mediatek/thermalmanager/CoolersActivity;->items:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/thermalmanager/CoolersActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mediatek/thermalmanager/CoolersActivity;->coolers_lv:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 165
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/thermalmanager/CoolersActivity;->items:Ljava/util/List;

    .line 171
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/mediatek/thermalmanager/CoolersActivity;->coolers_lv:Landroid/widget/ListView;

    .line 172
    iget-object v0, p0, Lcom/mediatek/thermalmanager/CoolersActivity;->coolers_lv:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 173
    new-instance v0, Lcom/mediatek/thermalmanager/CoolersActivity$CoolerLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/thermalmanager/CoolersActivity$CoolerLoader;-><init>(Lcom/mediatek/thermalmanager/CoolersActivity;Lcom/mediatek/thermalmanager/CoolersActivity$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 174
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
