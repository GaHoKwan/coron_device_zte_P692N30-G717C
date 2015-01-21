.class synthetic Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$2;
.super Ljava/lang/Object;
.source "OneKeySpeedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$zte$heartyservice$common$datatype$SpeedType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 303
    invoke-static {}, Lcom/zte/heartyservice/common/datatype/SpeedType;->values()[Lcom/zte/heartyservice/common/datatype/SpeedType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$2;->$SwitchMap$com$zte$heartyservice$common$datatype$SpeedType:[I

    :try_start_0
    sget-object v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$2;->$SwitchMap$com$zte$heartyservice$common$datatype$SpeedType:[I

    sget-object v1, Lcom/zte/heartyservice/common/datatype/SpeedType;->ONKEYSPEED:Lcom/zte/heartyservice/common/datatype/SpeedType;

    invoke-virtual {v1}, Lcom/zte/heartyservice/common/datatype/SpeedType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$2;->$SwitchMap$com$zte$heartyservice$common$datatype$SpeedType:[I

    sget-object v1, Lcom/zte/heartyservice/common/datatype/SpeedType;->RUNNINGAPP:Lcom/zte/heartyservice/common/datatype/SpeedType;

    invoke-virtual {v1}, Lcom/zte/heartyservice/common/datatype/SpeedType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$2;->$SwitchMap$com$zte$heartyservice$common$datatype$SpeedType:[I

    sget-object v1, Lcom/zte/heartyservice/common/datatype/SpeedType;->GARBAGECLEARED:Lcom/zte/heartyservice/common/datatype/SpeedType;

    invoke-virtual {v1}, Lcom/zte/heartyservice/common/datatype/SpeedType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$2;->$SwitchMap$com$zte$heartyservice$common$datatype$SpeedType:[I

    sget-object v1, Lcom/zte/heartyservice/common/datatype/SpeedType;->AUTORUNAPP:Lcom/zte/heartyservice/common/datatype/SpeedType;

    invoke-virtual {v1}, Lcom/zte/heartyservice/common/datatype/SpeedType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
