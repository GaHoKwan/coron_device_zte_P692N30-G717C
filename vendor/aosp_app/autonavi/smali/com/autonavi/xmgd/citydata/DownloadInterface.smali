.class interface abstract Lcom/autonavi/xmgd/citydata/DownloadInterface;
.super Ljava/lang/Object;


# static fields
.field public static final DOWNLOAD_IOEXCEPTION:I = 0x11

.field public static final ERROR_CODE_NETERROR:I = 0x6

.field public static final PREPARE_RESULT_CREATE_EXCEPTION:I = 0x1

.field public static final PREPARE_RESULT_CREATE_SUCCESS:I = 0x0

.field public static final PREPARE_RESULT_RESPONSE_ERROR:I = 0x3

.field public static final PREPARE_RESULT_RESUME_FAIL:I = 0x5

.field public static final PREPARE_RESULT_RESUME_SUCCESS:I = 0x4

.field public static final PREPARE_RESULT_TIMEOUT:I = 0x2

.field public static final PREPARE_RESULT_UNDEFINED:I = -0x1


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
