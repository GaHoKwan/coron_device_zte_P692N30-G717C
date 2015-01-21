.class Lcom/android/launcher2/LauncherModel$10;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->addAllAppsItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ApplicationInfo;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$notify:Z

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel;Landroid/content/ContentResolver;ZLandroid/content/ContentValues;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3669
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$10;->this$0:Lcom/android/launcher2/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$10;->val$cr:Landroid/content/ContentResolver;

    iput-boolean p3, p0, Lcom/android/launcher2/LauncherModel$10;->val$notify:Z

    iput-object p4, p0, Lcom/android/launcher2/LauncherModel$10;->val$values:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3671
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$10;->val$cr:Landroid/content/ContentResolver;

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$10;->val$notify:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/launcher2/ext/AllApps;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$10;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 3673
    return-void

    .line 3671
    :cond_0
    sget-object v0, Lcom/mediatek/launcher2/ext/AllApps;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    goto :goto_0
.end method
