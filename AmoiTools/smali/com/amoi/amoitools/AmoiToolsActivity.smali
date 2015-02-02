.class public Lcom/amoi/amoitools/AmoiToolsActivity;
.super Landroid/app/ListActivity;
.source "AmoiToolsActivity.java"


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
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
    .line 19
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amoi/amoitools/AmoiToolsActivity;->list:Ljava/util/ArrayList;

    return-void
.end method

.method private ScanMedia()V
    .locals 5

    .prologue
    .line 33
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.amoi.intent.action.MEDIA_SCAN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .local v2, intent:Landroid/content/Intent;
    new-instance v1, Ljava/io/File;

    const-string v3, "/storage"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    .local v1, f:Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 36
    .local v0, contentUri:Landroid/net/Uri;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 37
    const-string v3, "AmoiToolsActivity"

    const-string v4, "chenpx com.amoi.intent.action.MEDIA_SCAN"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p0, v2}, Lcom/amoi/amoitools/AmoiToolsActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 39
    return-void
.end method

.method private initlist()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amoi/amoitools/AmoiToolsActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 45
    iget-object v0, p0, Lcom/amoi/amoitools/AmoiToolsActivity;->list:Ljava/util/ArrayList;

    const v1, 0x7f040003

    invoke-virtual {p0, v1}, Lcom/amoi/amoitools/AmoiToolsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/amoi/amoitools/AmoiToolsActivity;->list:Ljava/util/ArrayList;

    const v1, 0x7f040004

    invoke-virtual {p0, v1}, Lcom/amoi/amoitools/AmoiToolsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-direct {p0}, Lcom/amoi/amoitools/AmoiToolsActivity;->initlist()V

    .line 26
    invoke-direct {p0}, Lcom/amoi/amoitools/AmoiToolsActivity;->ScanMedia()V

    .line 27
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    iget-object v2, p0, Lcom/amoi/amoitools/AmoiToolsActivity;->list:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/amoi/amoitools/AmoiToolsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 29
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, intent:Landroid/content/Intent;
    packed-switch p3, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 62
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v1, Lcom/amoi/amoitools/install/AmoiInstall;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/amoi/amoitools/AmoiToolsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 68
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v1, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/amoi/amoitools/AmoiToolsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
