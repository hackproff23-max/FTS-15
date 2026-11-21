.class public final Lcom/flurry/sdk/dt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/dt;->k:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/flurry/sdk/dt;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/flurry/sdk/dt;->a:I

    .line 24
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/flurry/sdk/dt;->c:Z

    .line 32
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 87
    iput p1, p0, Lcom/flurry/sdk/dt;->k:I

    .line 88
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/flurry/sdk/dt;->b:Z

    .line 40
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/flurry/sdk/dt;->c:Z

    return v0
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/flurry/sdk/dt;->d:Z

    .line 48
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/flurry/sdk/dt;->b:Z

    return v0
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/flurry/sdk/dt;->e:Z

    .line 56
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/flurry/sdk/dt;->d:Z

    return v0
.end method

.method public e(Z)V
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/flurry/sdk/dt;->f:Z

    .line 64
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/flurry/sdk/dt;->e:Z

    return v0
.end method

.method public f(Z)V
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/flurry/sdk/dt;->i:Z

    .line 72
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/flurry/sdk/dt;->f:Z

    return v0
.end method

.method public g(Z)V
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/flurry/sdk/dt;->g:Z

    .line 80
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/flurry/sdk/dt;->i:Z

    return v0
.end method

.method public h(Z)V
    .locals 0

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/flurry/sdk/dt;->h:Z

    .line 96
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/flurry/sdk/dt;->g:Z

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/flurry/sdk/dt;->k:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "videoPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/flurry/sdk/dt;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoStartHit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/flurry/sdk/dt;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoFirstQuartileHit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/flurry/sdk/dt;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoMidpointHit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/flurry/sdk/dt;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoThirdQuartileHit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/flurry/sdk/dt;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", moreInfoClicked:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/flurry/sdk/dt;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoRendered:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/flurry/sdk/dt;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", moreInfoInProgress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/flurry/sdk/dt;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
