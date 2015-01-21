.class public Lcom/android/dreams/phototable/PhotoTableDreamSettings;
.super Landroid/app/ListActivity;
.source "PhotoTableDreamSettings.java"


# static fields
.field public static final PREFS_NAME:Ljava/lang/String; = "PhotoTableDream"

.field private static final TAG:Ljava/lang/String; = "PhotoTableDreamSettings"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mPhotoSource:Lcom/android/dreams/phototable/PhotoSourcePlexor;

.field private mSettings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/dreams/phototable/PhotoTableDreamSettings;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTableDreamSettings;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/dreams/phototable/PhotoTableDreamSettings;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/dreams/phototable/PhotoTableDreamSettings;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/dreams/phototable/PhotoTableDreamSettings;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTableDreamSettings;->mSettings:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/dreams/phototable/PhotoTableDreamSettings;)Lcom/android/dreams/phototable/PhotoSourcePlexor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTableDreamSettings;->mPhotoSource:Lcom/android/dreams/phototable/PhotoSourcePlexor;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const-string v0, "PhotoTableDream"

    invoke-virtual {p0, v0, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoTableDreamSettings;->mSettings:Landroid/content/SharedPreferences;

    .line 43
    new-instance v0, Lcom/android/dreams/phototable/PhotoSourcePlexor;

    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTableDreamSettings;->mSettings:Landroid/content/SharedPreferences;

    invoke-direct {v0, p0, v1}, Lcom/android/dreams/phototable/PhotoSourcePlexor;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoTableDreamSettings;->mPhotoSource:Lcom/android/dreams/phototable/PhotoSourcePlexor;

    .line 44
    const v0, 0x7f040005

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 46
    new-instance v0, Lcom/android/dreams/phototable/PhotoTableDreamSettings$1;

    invoke-direct {v0, p0}, Lcom/android/dreams/phototable/PhotoTableDreamSettings$1;-><init>(Lcom/android/dreams/phototable/PhotoTableDreamSettings;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 67
    return-void
.end method
