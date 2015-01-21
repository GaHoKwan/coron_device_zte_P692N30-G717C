.class Lcom/nuance/dragon/toolkit/elvis/BinFileParametersJni;
.super Ljava/lang/Object;


# instance fields
.field public _languageCode:Ljava/lang/String;

.field public _sampleRate:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/BinFileParametersJni;->_languageCode:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/dragon/toolkit/elvis/BinFileParametersJni;->_sampleRate:I

    return-void
.end method
