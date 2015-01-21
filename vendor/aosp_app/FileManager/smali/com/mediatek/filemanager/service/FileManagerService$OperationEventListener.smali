.class public interface abstract Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;
.super Ljava/lang/Object;
.source "FileManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/filemanager/service/FileManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OperationEventListener"
.end annotation


# static fields
.field public static final ERROR_CODE_BUSY:I = -0x64

.field public static final ERROR_CODE_COPY_GREATER_4G_TO_FAT32:I = -0x10

.field public static final ERROR_CODE_COPY_NO_PERMISSION:I = -0xa

.field public static final ERROR_CODE_CUT_SAME_PATH:I = -0xc

.field public static final ERROR_CODE_DELETE_FAILS:I = -0x6

.field public static final ERROR_CODE_DELETE_NO_PERMISSION:I = -0xf

.field public static final ERROR_CODE_DELETE_UNSUCCESS:I = -0xd

.field public static final ERROR_CODE_FILE_EXIST:I = -0x4

.field public static final ERROR_CODE_MKDIR_UNSUCCESS:I = -0xb

.field public static final ERROR_CODE_NAME_EMPTY:I = -0x2

.field public static final ERROR_CODE_NAME_TOO_LONG:I = -0x3

.field public static final ERROR_CODE_NAME_VALID:I = 0x64

.field public static final ERROR_CODE_NOT_ENOUGH_SPACE:I = -0x5

.field public static final ERROR_CODE_PASTE_TO_SUB:I = -0x8

.field public static final ERROR_CODE_PASTE_UNSUCCESS:I = -0xe

.field public static final ERROR_CODE_SUCCESS:I = 0x0

.field public static final ERROR_CODE_UNKOWN:I = -0x9

.field public static final ERROR_CODE_UNSUCCESS:I = -0x1

.field public static final ERROR_CODE_USER_CANCEL:I = -0x7


# virtual methods
.method public abstract onTaskPrepare()V
.end method

.method public abstract onTaskProgress(Lcom/mediatek/filemanager/service/ProgressInfo;)V
.end method

.method public abstract onTaskResult(I)V
.end method
