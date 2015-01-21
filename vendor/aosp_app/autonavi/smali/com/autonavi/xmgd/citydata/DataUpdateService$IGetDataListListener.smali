.class public interface abstract Lcom/autonavi/xmgd/citydata/DataUpdateService$IGetDataListListener;
.super Ljava/lang/Object;


# static fields
.field public static final ERROR_EXCEPTION1:I = 0x2718

.field public static final ERROR_EXCEPTION2:I = 0x2719

.field public static final ERROR_EXCEPTION3:I = 0x271a

.field public static final ERROR_EXCEPTION4:I = 0x271b

.field public static final ERROR_EXCEPTION5:I = 0x271c

.field public static final ERROR_EXCEPTION6:I = 0x271d

.field public static final ERROR_EXCEPTION7:I = 0x271e

.field public static final ERROR_IOEXCEPTION:I = 0x2722

.field public static final ERROR_MAX:I = 0x9c40

.field public static final ERROR_NETERROR:I = 0x7530

.field public static final ERROR_NOEXISTDATA:I = 0x2720

.field public static final ERROR_PARAMETER:I = 0x271f

.field public static final ERROR_SERVICEEXCEPTION:I = 0x4e20


# virtual methods
.method public abstract onError(I)V
.end method

.method public abstract onGetDataList(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/citydata/DataItem;",
            ">;)V"
        }
    .end annotation
.end method
