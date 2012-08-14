.class public Landroid/provider/CallNbpcdDlutTable;
.super Ljava/lang/Object;
.source "CallNbpcdDlutTable.java"


# static fields
.field public static versionCheck:I


# instance fields
.field private IDDCode:Ljava/lang/String;

.field private NBPCDLastAttempt:Ljava/lang/String;

.field private NBPCDSupport:I

.field private SIDConflict:I

.field private countryCode:I

.field private index:I

.field private mccCnt:I

.field private mccCode:Ljava/lang/String;

.field private sidRange:Ljava/lang/String;

.field private sidRangeCnt:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "index"
    .parameter "mccCnt"
    .parameter "mccCode"
    .parameter "sidRangeCnt"
    .parameter "sidRange"
    .parameter "countryCode"
    .parameter "SIDConflict"
    .parameter "NBPCDSupport"
    .parameter "NBPCDLastAttempt"
    .parameter "IDDCode"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Landroid/provider/CallNbpcdDlutTable;->index:I

    .line 30
    iput p2, p0, Landroid/provider/CallNbpcdDlutTable;->mccCnt:I

    .line 31
    iput-object p3, p0, Landroid/provider/CallNbpcdDlutTable;->mccCode:Ljava/lang/String;

    .line 32
    iput p4, p0, Landroid/provider/CallNbpcdDlutTable;->sidRangeCnt:I

    .line 33
    iput-object p5, p0, Landroid/provider/CallNbpcdDlutTable;->sidRange:Ljava/lang/String;

    .line 34
    iput p6, p0, Landroid/provider/CallNbpcdDlutTable;->countryCode:I

    .line 35
    iput p7, p0, Landroid/provider/CallNbpcdDlutTable;->SIDConflict:I

    .line 36
    iput p8, p0, Landroid/provider/CallNbpcdDlutTable;->NBPCDSupport:I

    .line 37
    iput-object p9, p0, Landroid/provider/CallNbpcdDlutTable;->NBPCDLastAttempt:Ljava/lang/String;

    .line 38
    iput-object p10, p0, Landroid/provider/CallNbpcdDlutTable;->IDDCode:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getCountryCode()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Landroid/provider/CallNbpcdDlutTable;->countryCode:I

    return v0
.end method

.method public getIDDCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Landroid/provider/CallNbpcdDlutTable;->IDDCode:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Landroid/provider/CallNbpcdDlutTable;->index:I

    return v0
.end method

.method public getMccCnt()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Landroid/provider/CallNbpcdDlutTable;->mccCnt:I

    return v0
.end method

.method public getMccCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Landroid/provider/CallNbpcdDlutTable;->mccCode:Ljava/lang/String;

    return-object v0
.end method

.method public getNBPCDLastAttempt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Landroid/provider/CallNbpcdDlutTable;->NBPCDLastAttempt:Ljava/lang/String;

    return-object v0
.end method

.method public getNBPCDSupport()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Landroid/provider/CallNbpcdDlutTable;->NBPCDSupport:I

    return v0
.end method

.method public getSIDConflict()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Landroid/provider/CallNbpcdDlutTable;->SIDConflict:I

    return v0
.end method

.method public getSidRange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Landroid/provider/CallNbpcdDlutTable;->sidRange:Ljava/lang/String;

    return-object v0
.end method

.method public getSidRangeCnt()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Landroid/provider/CallNbpcdDlutTable;->sidRangeCnt:I

    return v0
.end method

.method public setCountryCode(I)V
    .locals 0
    .parameter "countryCode"

    .prologue
    .line 131
    iput p1, p0, Landroid/provider/CallNbpcdDlutTable;->countryCode:I

    .line 132
    return-void
.end method

.method public setIDDCode(Ljava/lang/String;)V
    .locals 0
    .parameter "iDDCode"

    .prologue
    .line 187
    iput-object p1, p0, Landroid/provider/CallNbpcdDlutTable;->IDDCode:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 61
    iput p1, p0, Landroid/provider/CallNbpcdDlutTable;->index:I

    .line 62
    return-void
.end method

.method public setMccCnt(I)V
    .locals 0
    .parameter "mccCnt"

    .prologue
    .line 75
    iput p1, p0, Landroid/provider/CallNbpcdDlutTable;->mccCnt:I

    .line 76
    return-void
.end method

.method public setMccCode(Ljava/lang/String;)V
    .locals 0
    .parameter "mccCode"

    .prologue
    .line 89
    iput-object p1, p0, Landroid/provider/CallNbpcdDlutTable;->mccCode:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setNBPCDLastAttempt(Ljava/lang/String;)V
    .locals 0
    .parameter "nBPCDLastAttempt"

    .prologue
    .line 173
    iput-object p1, p0, Landroid/provider/CallNbpcdDlutTable;->NBPCDLastAttempt:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setNBPCDSupport(I)V
    .locals 0
    .parameter "nBPCDSupport"

    .prologue
    .line 159
    iput p1, p0, Landroid/provider/CallNbpcdDlutTable;->NBPCDSupport:I

    .line 160
    return-void
.end method

.method public setSIDConflict(I)V
    .locals 0
    .parameter "sIDConflict"

    .prologue
    .line 145
    iput p1, p0, Landroid/provider/CallNbpcdDlutTable;->SIDConflict:I

    .line 146
    return-void
.end method

.method public setSidRange(Ljava/lang/String;)V
    .locals 0
    .parameter "sidRange"

    .prologue
    .line 117
    iput-object p1, p0, Landroid/provider/CallNbpcdDlutTable;->sidRange:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setSidRangeCnt(I)V
    .locals 0
    .parameter "sidRangeCnt"

    .prologue
    .line 103
    iput p1, p0, Landroid/provider/CallNbpcdDlutTable;->sidRangeCnt:I

    .line 104
    return-void
.end method
