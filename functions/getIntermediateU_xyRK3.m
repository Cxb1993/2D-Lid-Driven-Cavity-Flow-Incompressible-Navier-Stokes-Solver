% Copyright 2020 The MathWorks, Inc.
function xu = getIntermediateU_xyRK3(u, b, dt, Re, nx, ny, dx, dy, id)

persistent A4u1 A4u2 A4u3 dtRe_old L4u

if isempty(dtRe_old)
    dtRe_old = dt/Re;
end

if isempty(A4u1) || any(size(L4u) ~= [(nx-1)*ny,(nx-1)*ny]) || dtRe_old ~= dt/Re
    dtRe_old = dt/Re;
    maskU = false(nx+1,ny+2);
    maskU(2:end-1,2:end-1) = true;
    L4u = getL4u(nx,ny,dx,dy,maskU);
    A4u1 = eye(size(L4u),'like',L4u)-(8/15)*dt/(Re)*L4u;
    A4u2 = eye(size(L4u),'like',L4u)-(2/15)*dt/(Re)*L4u;
    A4u3 = eye(size(L4u),'like',L4u)-(2/6)*dt/(Re)*L4u;
    A4u1 = decomposition(A4u1);
    A4u2 = decomposition(A4u2);
    A4u3 = decomposition(A4u3);
    
end

% x0 = u(2:end-1,2:end-1);
% [xu,flag] = cgs(A4u,b(:),[],[],[],[],x0(:));
switch id
    case 1
        xu = A4u1\b(:);
    case 2
        xu = A4u2\b(:);
    case 3
        xu = A4u3\b(:);
end

xu = reshape(xu,[nx-1,ny]);

end