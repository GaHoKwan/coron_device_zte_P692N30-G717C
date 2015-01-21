.class public interface abstract Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileDownloadListener;
.super Ljava/lang/Object;


# static fields
.field public static final DOWNLOAD_IOEXCEPTION:I = 0x2721

.field public static final ERROR_CODE_EXCEPTION:I = 0x2717

.field public static final ERROR_CODE_NETERROR:I = 0x2716

.field public static final ERROR_CODE_NOSPACE_EXCEPTION:I = 0x2724

.field public static final ERROR_CODE_ZIP_EXCEPTION:I = 0x2723

.field public static final PREPARE_RESULT_CREATE_EXCEPTION:I = 0x2711

.field public static final PREPARE_RESULT_CREATE_SUCCESS:I = 0x2710

.field public static final PREPARE_RESULT_RESPONSE_ERROR:I = 0x2713

.field public static final PREPARE_RESULT_RESUME_FAIL:I = 0x2715

.field public static final PREPARE_RESULT_RESUME_SUCCESS:I = 0x2714

.field public static final PREPARE_RESULT_TIMEOUT:I = 0x2712


# virtual methods
.method public abstract onCompletion(I)V
.end method

.method public abstract onError(II)V
.end method

.method public abstract onPrepared(II)V
.end method

.method public abstract onProgressUpdate(II)V
.end method

.method public abstract onStarted(I)V
.end method

.method public abstract onStopped(I)V
.end method
