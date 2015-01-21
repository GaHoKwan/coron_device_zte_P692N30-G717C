.class public Lcom/android/emailcommon/mail/ServerCommandInfo$OofInfo;
.super Ljava/lang/Object;
.source "ServerCommandInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/mail/ServerCommandInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OofInfo"
.end annotation


# static fields
.field public static final NETWORK_SHUT_DOWN:I = -0x1

.field public static final OOF_IS_DISABLED:I = 0x0

.field public static final OOF_IS_GLOBAL:I = 0x1

.field public static final OOF_IS_TIME_BASED:I = 0x2

.field public static final SERVER_NOT_SUPPORT_OOF:I = 0x0

.field public static final SET_OR_SAVE_FAIL:I = 0x2

.field public static final SET_OR_SAVE_SUCCESS:I = 0x1

.field public static final SYNC_OOF_UNINITIALIZED:I = -0x2


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/mail/ServerCommandInfo;


# direct methods
.method public constructor <init>(Lcom/android/emailcommon/mail/ServerCommandInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 10
    iput-object p1, p0, Lcom/android/emailcommon/mail/ServerCommandInfo$OofInfo;->this$0:Lcom/android/emailcommon/mail/ServerCommandInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
