.class public Lcom/amoi/amoitools/install/AmoiInstall$QueryDataTask;
.super Landroid/os/AsyncTask;
.source "AmoiInstall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amoi/amoitools/install/AmoiInstall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QueryDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/amoi/amoitools/install/Apk_Item;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/amoitools/install/AmoiInstall;


# direct methods
.method constructor <init>(Lcom/amoi/amoitools/install/AmoiInstall;)V
    .locals 0
    .parameter

    .prologue
    .line 683
    iput-object p1, p0, Lcom/amoi/amoitools/install/AmoiInstall$QueryDataTask;->this$0:Lcom/amoi/amoitools/install/AmoiInstall;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 684
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 680
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/amoi/amoitools/install/AmoiInstall$QueryDataTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 1
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amoi/amoitools/install/Apk_Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 689
    iget-object v0, p0, Lcom/amoi/amoitools/install/AmoiInstall$QueryDataTask;->this$0:Lcom/amoi/amoitools/install/AmoiInstall;

    invoke-virtual {v0}, Lcom/amoi/amoitools/install/AmoiInstall;->queryApk()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 680
    check-cast p1, Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/amoi/amoitools/install/AmoiInstall$QueryDataTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amoi/amoitools/install/Apk_Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 694
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/amoi/amoitools/install/Apk_Item;>;"
    iget-object v0, p0, Lcom/amoi/amoitools/install/AmoiInstall$QueryDataTask;->this$0:Lcom/amoi/amoitools/install/AmoiInstall;

    #calls: Lcom/amoi/amoitools/install/AmoiInstall;->queryComplete()V
    invoke-static {v0}, Lcom/amoi/amoitools/install/AmoiInstall;->access$700(Lcom/amoi/amoitools/install/AmoiInstall;)V

    .line 695
    return-void
.end method
