.class Lcom/android/mms/ui/MmsPlayerActivity$5;
.super Ljava/lang/Object;
.source "MmsPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsPlayerActivity;->markMmsRead()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsPlayerActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsPlayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1085
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerActivity$5;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 1087
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1088
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "read"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1089
    const-string v0, "seen"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1090
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity$5;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerActivity$5;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerActivity$5;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    #getter for: Lcom/android/mms/ui/MmsPlayerActivity;->mMsgUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/mms/ui/MmsPlayerActivity;->access$200(Lcom/android/mms/ui/MmsPlayerActivity;)Landroid/net/Uri;

    move-result-object v2

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1091
    return-void
.end method
