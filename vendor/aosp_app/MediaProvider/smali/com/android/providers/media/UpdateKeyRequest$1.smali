.class Lcom/android/providers/media/UpdateKeyRequest$1;
.super Ljava/lang/Object;
.source "UpdateKeyRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/media/UpdateKeyRequest;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/UpdateKeyRequest;


# direct methods
.method constructor <init>(Lcom/android/providers/media/UpdateKeyRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/providers/media/UpdateKeyRequest$1;->this$0:Lcom/android/providers/media/UpdateKeyRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 70
    const-string v0, "UpdateKeyRequest"

    const-string v1, "execute: subthread started."

    invoke-static {v0, v1}, Lcom/android/providers/media/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/android/providers/media/UpdateKeyRequest$1;->this$0:Lcom/android/providers/media/UpdateKeyRequest;

    iget-object v1, p0, Lcom/android/providers/media/UpdateKeyRequest$1;->this$0:Lcom/android/providers/media/UpdateKeyRequest;

    #getter for: Lcom/android/providers/media/UpdateKeyRequest;->mHelper:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    invoke-static {v1}, Lcom/android/providers/media/UpdateKeyRequest;->access$000(Lcom/android/providers/media/UpdateKeyRequest;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/media/UpdateKeyRequest$1;->this$0:Lcom/android/providers/media/UpdateKeyRequest;

    #getter for: Lcom/android/providers/media/UpdateKeyRequest;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v2}, Lcom/android/providers/media/UpdateKeyRequest;->access$100(Lcom/android/providers/media/UpdateKeyRequest;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    #calls: Lcom/android/providers/media/UpdateKeyRequest;->updateKey(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, v1, v2}, Lcom/android/providers/media/UpdateKeyRequest;->access$200(Lcom/android/providers/media/UpdateKeyRequest;Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 73
    iget-object v0, p0, Lcom/android/providers/media/UpdateKeyRequest$1;->this$0:Lcom/android/providers/media/UpdateKeyRequest;

    #calls: Lcom/android/providers/media/UpdateKeyRequest;->saveUpdateLocaleToPrefs()V
    invoke-static {v0}, Lcom/android/providers/media/UpdateKeyRequest;->access$300(Lcom/android/providers/media/UpdateKeyRequest;)V

    .line 74
    const-string v0, "UpdateKeyRequest"

    const-string v1, "execute: subthread end."

    invoke-static {v0, v1}, Lcom/android/providers/media/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method
