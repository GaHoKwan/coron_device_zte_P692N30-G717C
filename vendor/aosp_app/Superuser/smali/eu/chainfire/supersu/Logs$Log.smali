.class public Leu/chainfire/supersu/Logs$Log;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/supersu/Logs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Log"
.end annotation


# instance fields
.field Ą:I

.field ą:I

.field Ć:I

.field ć:I

.field ċ:I

.field ȃ:I

.field Ȋ:Ljava/util/Calendar;

.field ˮ͈:I

.field ˮ͍:I

.field 䒧:Ljava/lang/String;

.field 岱:I

.field 櫯:Ljava/lang/String;

.field 纫:Ljava/lang/String;

.field final synthetic 躆:Leu/chainfire/supersu/Logs;

.field 鷭:Ljava/lang/String;


# direct methods
.method public constructor <init>(Leu/chainfire/supersu/Logs;)V
    .locals 1

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/Logs$Log;->躆:Leu/chainfire/supersu/Logs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/Logs$Log;->鷭:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/Logs$Log;->櫯:Ljava/lang/String;

    .line 36
    const/16 v0, 0x76c

    iput v0, p0, Leu/chainfire/supersu/Logs$Log;->ˮ͈:I

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Leu/chainfire/supersu/Logs$Log;->ȃ:I

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Leu/chainfire/supersu/Logs$Log;->Ą:I

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Leu/chainfire/supersu/Logs$Log;->ą:I

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Leu/chainfire/supersu/Logs$Log;->Ć:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Leu/chainfire/supersu/Logs$Log;->ć:I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Leu/chainfire/supersu/Logs$Log;->ˮ͍:I

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Leu/chainfire/supersu/Logs$Log;->岱:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/Logs$Log;->Ȋ:Ljava/util/Calendar;

    .line 46
    const/4 v0, 0x2

    iput v0, p0, Leu/chainfire/supersu/Logs$Log;->ċ:I

    .line 47
    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/Logs$Log;->纫:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/Logs$Log;->䒧:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final 櫯(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 0
    const-string v0, "31122359"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "12312359"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%02d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Leu/chainfire/supersu/Logs$Log;->ą:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Leu/chainfire/supersu/Logs$Log;->Ć:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const-string p1, "AM"

    .line 69
    iget v5, p0, Leu/chainfire/supersu/Logs$Log;->ą:I

    .line 70
    const/16 v0, 0xc

    if-lt v5, v0, :cond_2

    const-string p1, "PM"

    .line 71
    :cond_2
    const/16 v0, 0xd

    if-lt v5, v0, :cond_3

    add-int/lit8 v5, v5, -0xc

    .line 73
    :cond_3
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%02d:%02d %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Leu/chainfire/supersu/Logs$Log;->Ć:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 76
    :goto_0
    return-object p1
.end method

.method public final 鷭(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 0
    const-string v0, "31122359"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "31121159PM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%02d/%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Leu/chainfire/supersu/Logs$Log;->Ą:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Leu/chainfire/supersu/Logs$Log;->ȃ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%02d/%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Leu/chainfire/supersu/Logs$Log;->ȃ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Leu/chainfire/supersu/Logs$Log;->Ą:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 59
    :goto_0
    return-object p1
.end method
