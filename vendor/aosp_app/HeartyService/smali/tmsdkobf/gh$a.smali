.class public final Ltmsdkobf/gh$a;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/gh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private jO:I

.field private kb:I

.field private kg:I

.field private kh:I

.field private ki:I

.field private kj:I

.field private ne:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private nk:Ljava/lang/reflect/Method;

.field private nl:Ljava/lang/reflect/Method;

.field private nm:Ljava/lang/reflect/Method;

.field private synthetic nn:Ltmsdkobf/gh;


# direct methods
.method public constructor <init>(Ltmsdkobf/gh;II)V
    .locals 2
    .parameter
    .parameter "mcc"
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 128
    iput-object p1, p0, Ltmsdkobf/gh$a;->nn:Ltmsdkobf/gh;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 116
    iput v0, p0, Ltmsdkobf/gh$a;->jO:I

    .line 118
    iput v0, p0, Ltmsdkobf/gh$a;->kb:I

    iput v0, p0, Ltmsdkobf/gh$a;->kg:I

    iput v0, p0, Ltmsdkobf/gh$a;->kh:I

    iput v0, p0, Ltmsdkobf/gh$a;->ki:I

    iput v0, p0, Ltmsdkobf/gh$a;->kj:I

    .line 120
    iput-object v1, p0, Ltmsdkobf/gh$a;->ne:Ljava/util/List;

    .line 122
    iput-object v1, p0, Ltmsdkobf/gh$a;->nk:Ljava/lang/reflect/Method;

    .line 124
    iput-object v1, p0, Ltmsdkobf/gh$a;->nl:Ljava/lang/reflect/Method;

    .line 126
    iput-object v1, p0, Ltmsdkobf/gh$a;->nm:Ljava/lang/reflect/Method;

    .line 129
    iput p2, p0, Ltmsdkobf/gh$a;->kb:I

    .line 130
    iput p3, p0, Ltmsdkobf/gh$a;->jO:I

    .line 131
    return-void
.end method


# virtual methods
.method public final onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 11
    .parameter "location"

    .prologue
    const/4 v4, 0x3

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 135
    iput v3, p0, Ltmsdkobf/gh$a;->kj:I

    iput v3, p0, Ltmsdkobf/gh$a;->ki:I

    iput v3, p0, Ltmsdkobf/gh$a;->kh:I

    iput v3, p0, Ltmsdkobf/gh$a;->kg:I

    .line 136
    if-eqz p1, :cond_0

    .line 137
    iget v0, p0, Ltmsdkobf/gh$a;->jO:I

    packed-switch v0, :pswitch_data_0

    .line 146
    .end local p1
    :cond_0
    :goto_0
    iget-object v10, p0, Ltmsdkobf/gh$a;->nn:Ltmsdkobf/gh;

    new-instance v0, Ltmsdkobf/gh$b;

    iget-object v1, p0, Ltmsdkobf/gh$a;->nn:Ltmsdkobf/gh;

    iget v2, p0, Ltmsdkobf/gh$a;->jO:I

    iget v3, p0, Ltmsdkobf/gh$a;->kb:I

    iget v4, p0, Ltmsdkobf/gh$a;->kg:I

    iget v5, p0, Ltmsdkobf/gh$a;->kh:I

    iget v6, p0, Ltmsdkobf/gh$a;->ki:I

    iget v7, p0, Ltmsdkobf/gh$a;->kj:I

    .line 147
    iget-object v8, p0, Ltmsdkobf/gh$a;->ne:Ljava/util/List;

    invoke-direct/range {v0 .. v8}, Ltmsdkobf/gh$b;-><init>(Ltmsdkobf/gh;IIIIIILjava/util/List;)V

    .line 146
    invoke-static {v10, v0}, Ltmsdkobf/gh;->a(Ltmsdkobf/gh;Ltmsdkobf/gh$b;)V

    .line 148
    iget-object v0, p0, Ltmsdkobf/gh$a;->nn:Ltmsdkobf/gh;

    invoke-static {v0}, Ltmsdkobf/gh;->a(Ltmsdkobf/gh;)Ltmsdkobf/gh$c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Ltmsdkobf/gh$a;->nn:Ltmsdkobf/gh;

    invoke-static {v0}, Ltmsdkobf/gh;->a(Ltmsdkobf/gh;)Ltmsdkobf/gh$c;

    move-result-object v0

    iget-object v1, p0, Ltmsdkobf/gh$a;->nn:Ltmsdkobf/gh;

    invoke-static {v1}, Ltmsdkobf/gh;->b(Ltmsdkobf/gh;)Ltmsdkobf/gh$b;

    move-result-object v1

    invoke-interface {v0, v1}, Ltmsdkobf/gh$c;->a(Ltmsdkobf/gh$b;)V

    .line 150
    :cond_1
    return-void

    .line 139
    .restart local p1
    :pswitch_0
    move-object v9, p0

    .end local p1
    .local v9, location:Landroid/telephony/CellLocation;
    const/4 v0, 0x0

    :try_start_0
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    if-gtz v0, :cond_2

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, v9, Ltmsdkobf/gh$a;->nn:Ltmsdkobf/gh;

    invoke-static {v0}, Ltmsdkobf/gh;->c(Ltmsdkobf/gh;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object p1, v0

    :cond_2
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, v9, Ltmsdkobf/gh$a;->nn:Ltmsdkobf/gh;

    invoke-static {v0}, Ltmsdkobf/gh;->c(Ltmsdkobf/gh;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_3

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v9, Ltmsdkobf/gh$a;->kg:I

    :cond_3
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    iput v0, v9, Ltmsdkobf/gh$a;->kh:I

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    iput v0, v9, Ltmsdkobf/gh$a;->ki:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    iget-object v0, v9, Ltmsdkobf/gh$a;->nn:Ltmsdkobf/gh;

    invoke-static {v0}, Ltmsdkobf/gh;->c(Ltmsdkobf/gh;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v9, Ltmsdkobf/gh$a;->nn:Ltmsdkobf/gh;

    invoke-static {v0}, Ltmsdkobf/gh;->c(Ltmsdkobf/gh;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    iput-object v0, v9, Ltmsdkobf/gh$a;->ne:Ljava/util/List;

    goto/16 :goto_0

    :catch_0
    move-exception v2

    move-object p1, v0

    :goto_3
    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    iput v3, v9, Ltmsdkobf/gh$a;->ki:I

    iput v3, v9, Ltmsdkobf/gh$a;->kh:I

    iput v3, v9, Ltmsdkobf/gh$a;->kg:I

    goto :goto_2

    .line 142
    .end local v9           #location:Landroid/telephony/CellLocation;
    .restart local p1
    :pswitch_1
    if-eqz p1, :cond_0

    :try_start_3
    iget-object v0, p0, Ltmsdkobf/gh$a;->nk:Ljava/lang/reflect/Method;

    if-nez v0, :cond_4

    const-string v0, "android.telephony.cdma.CdmaCellLocation"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getBaseStationId"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/gh$a;->nk:Ljava/lang/reflect/Method;

    const-string v0, "android.telephony.cdma.CdmaCellLocation"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getSystemId"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/gh$a;->nl:Ljava/lang/reflect/Method;

    const-string v0, "android.telephony.cdma.CdmaCellLocation"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getNetworkId"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/gh$a;->nm:Ljava/lang/reflect/Method;

    :cond_4
    iget-object v0, p0, Ltmsdkobf/gh$a;->nl:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Ltmsdkobf/gh$a;->kg:I

    iget-object v0, p0, Ltmsdkobf/gh$a;->nm:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Ltmsdkobf/gh$a;->kh:I

    iget-object v0, p0, Ltmsdkobf/gh$a;->nk:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Ltmsdkobf/gh$a;->ki:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    iput v3, p0, Ltmsdkobf/gh$a;->ki:I

    iput v3, p0, Ltmsdkobf/gh$a;->kh:I

    iput v3, p0, Ltmsdkobf/gh$a;->kg:I

    goto/16 :goto_0

    .line 139
    .end local p1
    .restart local v9       #location:Landroid/telephony/CellLocation;
    :catch_3
    move-exception v0

    goto/16 :goto_3

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onSignalStrengthChanged(I)V
    .locals 10
    .parameter "asu"

    .prologue
    .line 154
    iget v0, p0, Ltmsdkobf/gh$a;->kj:I

    add-int/lit8 v0, v0, 0x71

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 155
    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, -0x71

    iput v0, p0, Ltmsdkobf/gh$a;->kj:I

    .line 156
    iget-object v9, p0, Ltmsdkobf/gh$a;->nn:Ltmsdkobf/gh;

    new-instance v0, Ltmsdkobf/gh$b;

    iget-object v1, p0, Ltmsdkobf/gh$a;->nn:Ltmsdkobf/gh;

    iget v2, p0, Ltmsdkobf/gh$a;->jO:I

    iget v3, p0, Ltmsdkobf/gh$a;->kb:I

    iget v4, p0, Ltmsdkobf/gh$a;->kg:I

    iget v5, p0, Ltmsdkobf/gh$a;->kh:I

    iget v6, p0, Ltmsdkobf/gh$a;->ki:I

    iget v7, p0, Ltmsdkobf/gh$a;->kj:I

    .line 157
    iget-object v8, p0, Ltmsdkobf/gh$a;->ne:Ljava/util/List;

    invoke-direct/range {v0 .. v8}, Ltmsdkobf/gh$b;-><init>(Ltmsdkobf/gh;IIIIIILjava/util/List;)V

    .line 156
    invoke-static {v9, v0}, Ltmsdkobf/gh;->a(Ltmsdkobf/gh;Ltmsdkobf/gh$b;)V

    .line 158
    iget-object v0, p0, Ltmsdkobf/gh$a;->nn:Ltmsdkobf/gh;

    invoke-static {v0}, Ltmsdkobf/gh;->a(Ltmsdkobf/gh;)Ltmsdkobf/gh$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Ltmsdkobf/gh$a;->nn:Ltmsdkobf/gh;

    invoke-static {v0}, Ltmsdkobf/gh;->a(Ltmsdkobf/gh;)Ltmsdkobf/gh$c;

    move-result-object v0

    iget-object v1, p0, Ltmsdkobf/gh$a;->nn:Ltmsdkobf/gh;

    invoke-static {v1}, Ltmsdkobf/gh;->b(Ltmsdkobf/gh;)Ltmsdkobf/gh$b;

    move-result-object v1

    invoke-interface {v0, v1}, Ltmsdkobf/gh$c;->a(Ltmsdkobf/gh$b;)V

    .line 161
    :cond_0
    return-void
.end method
