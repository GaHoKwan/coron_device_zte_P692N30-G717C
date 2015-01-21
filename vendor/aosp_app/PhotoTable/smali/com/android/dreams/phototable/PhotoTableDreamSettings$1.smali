.class Lcom/android/dreams/phototable/PhotoTableDreamSettings$1;
.super Landroid/os/AsyncTask;
.source "PhotoTableDreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dreams/phototable/PhotoTableDreamSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dreams/phototable/PhotoTableDreamSettings;


# direct methods
.method constructor <init>(Lcom/android/dreams/phototable/PhotoTableDreamSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/dreams/phototable/PhotoTableDreamSettings$1;->this$0:Lcom/android/dreams/phototable/PhotoTableDreamSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/dreams/phototable/PhotoTableDreamSettings$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .parameter "unused"

    .prologue
    .line 49
    iget-object v6, p0, Lcom/android/dreams/phototable/PhotoTableDreamSettings$1;->this$0:Lcom/android/dreams/phototable/PhotoTableDreamSettings;

    new-instance v0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;

    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTableDreamSettings$1;->this$0:Lcom/android/dreams/phototable/PhotoTableDreamSettings;

    iget-object v2, p0, Lcom/android/dreams/phototable/PhotoTableDreamSettings$1;->this$0:Lcom/android/dreams/phototable/PhotoTableDreamSettings;

    #getter for: Lcom/android/dreams/phototable/PhotoTableDreamSettings;->mSettings:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/dreams/phototable/PhotoTableDreamSettings;->access$100(Lcom/android/dreams/phototable/PhotoTableDreamSettings;)Landroid/content/SharedPreferences;

    move-result-object v2

    const v3, 0x7f040003

    const/high16 v4, 0x7f04

    new-instance v5, Ljava/util/LinkedList;

    iget-object v7, p0, Lcom/android/dreams/phototable/PhotoTableDreamSettings$1;->this$0:Lcom/android/dreams/phototable/PhotoTableDreamSettings;

    #getter for: Lcom/android/dreams/phototable/PhotoTableDreamSettings;->mPhotoSource:Lcom/android/dreams/phototable/PhotoSourcePlexor;
    invoke-static {v7}, Lcom/android/dreams/phototable/PhotoTableDreamSettings;->access$200(Lcom/android/dreams/phototable/PhotoTableDreamSettings;)Lcom/android/dreams/phototable/PhotoSourcePlexor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/dreams/phototable/PhotoSourcePlexor;->findAlbums()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;IILjava/util/List;)V

    #setter for: Lcom/android/dreams/phototable/PhotoTableDreamSettings;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v6, v0}, Lcom/android/dreams/phototable/PhotoTableDreamSettings;->access$002(Lcom/android/dreams/phototable/PhotoTableDreamSettings;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/dreams/phototable/PhotoTableDreamSettings$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "unused"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTableDreamSettings$1;->this$0:Lcom/android/dreams/phototable/PhotoTableDreamSettings;

    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTableDreamSettings$1;->this$0:Lcom/android/dreams/phototable/PhotoTableDreamSettings;

    #getter for: Lcom/android/dreams/phototable/PhotoTableDreamSettings;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v1}, Lcom/android/dreams/phototable/PhotoTableDreamSettings;->access$000(Lcom/android/dreams/phototable/PhotoTableDreamSettings;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTableDreamSettings$1;->this$0:Lcom/android/dreams/phototable/PhotoTableDreamSettings;

    #getter for: Lcom/android/dreams/phototable/PhotoTableDreamSettings;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v0}, Lcom/android/dreams/phototable/PhotoTableDreamSettings;->access$000(Lcom/android/dreams/phototable/PhotoTableDreamSettings;)Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTableDreamSettings$1;->this$0:Lcom/android/dreams/phototable/PhotoTableDreamSettings;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    :cond_0
    return-void
.end method
